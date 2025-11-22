import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/core/router/router.dart';

Future<CookieManager> getCookieManager() async {
  final directory = await getApplicationDocumentsDirectory();
  final cookiesDir = Directory('${directory.path}/.cookies');

  if (!await cookiesDir.exists()) {
    await cookiesDir.create(recursive: true);
  }

  final cookieJar = PersistCookieJar(
    ignoreExpires: false,
    storage: FileStorage(cookiesDir.path),
  );

  return CookieManager(cookieJar);
}

Future<Dio> createDio() async {
  final dio = Dio(
    BaseOptions(
      baseUrl: dotenv.get('BASE_URL'),
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
      sendTimeout: const Duration(minutes: 3),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      },
    ),
  );

  dio.interceptors.addAll([
    await getCookieManager(),

    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      enabled: kDebugMode,
    ),
    CustomInterceptor(),
  ]);

  return dio;
}

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Extract cookies from request headers
    final cookieHeader = options.headers[HttpHeaders.cookieHeader] as String?;
    if (cookieHeader != null && cookieHeader.contains('X-XSRF-TOKEN=')) {
      // Extract actual token value from the cookie string
      final token = RegExp(
        r'X-XSRF-TOKEN=([^;]+)',
      ).firstMatch(cookieHeader)?.group(1);

      if (token != null && token.isNotEmpty) {
        // Add the header required by FileCloud
        options.headers['X-XSRF-TOKEN'] = token;
      }
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (response.data == null || response.data.toString().isEmpty) {
      response.data = {};

      return handler.next(response);
    }

    if (response.data is! Map<String, dynamic>) {
      return handler.next(response);
    }
    if (response.data['entry'] != null) {
      response.data = response.data['entry'];
    } else if (response.data['message'] != null) {
      response.data = response.data['message'];
    } else if (response.data['path'] != null) {
      response.data = response.data['path'];
    }
    return handler.next(response);
  }

  Failure _handleBadResponse({required Response response}) {
    final statusCode = response.statusCode ?? 500;
    final isServerError = statusCode ~/ 100 == 5;
    final isUnauthorized = statusCode == 401;

    if (isServerError) {
      return Failure.server(message: 'serverError');
    } else if (isUnauthorized) {
      return Failure.unauthorized(message: 'UnAuth');
    } else {
      return Failure.server(message: 'ServerError');
    }
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final failure = switch (err.type) {
      DioExceptionType.badCertificate => Failure.badCertificate(
        message: "badCertificate",
      ),
      DioExceptionType.cancel => Failure.requestCancelled(
        message: "requestCancelled",
      ),
      DioExceptionType.connectionError => Failure.noInternetConnection(
        message: "noInternetConnection",
      ),
      DioExceptionType.connectionTimeout => Failure.connectionTimeout(
        message: "connectionTimeout",
      ),
      DioExceptionType.receiveTimeout => Failure.receiveTimeout(
        message: "receiveTimeout",
      ),
      DioExceptionType.sendTimeout => Failure.sendTimeout(
        message: "sendTimeout",
      ),
      DioExceptionType.unknown => Failure.unknown(message: "unknownError"),
      DioExceptionType.badResponse => _handleBadResponse(
        response: err.response!,
      ),
    };
    await failure.mapOrNull(
      unauthorized: (_) {
        sl<AppRouter>().router.go('/login');
      },
    );
    return handler.next(
      DioException(
        requestOptions: err.requestOptions,
        error: failure,
        message: failure.message,
      ),
    );
  }
}

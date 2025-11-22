import 'package:dio/dio.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/domain/use_cases/login_use_case/login_use_case.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<void> login({required LoginParams params}) async {
    try {
      await _dio.post(
        '/loginguest',
        data: params.toJson(),
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class AuthRemoteDataSource {
  Future<void> login({required LoginParams params});
}

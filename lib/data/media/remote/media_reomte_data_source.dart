import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/domain/use_cases/download_media_use_case/download_media_use_case.dart';
import 'package:voice_summary/domain/use_cases/upload_media_use_case/upload_media_use_case.dart';

class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  final Dio _dio;

  MediaRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<Uint8List> downloadFile({required DownloadParams params}) async {
    try {
      final response = await _dio.get(
        '/downloadfile',
        onReceiveProgress: params.onProgress,
        options: Options(
          followRedirects: false,
          headers: {HttpHeaders.acceptEncodingHeader: 'gzip, deflate, br'},
          responseType: ResponseType.bytes,
        ),
        queryParameters: {
          'filepath': params.filepath,
          'filename': params.filename,
        },
      );

      return response.data;
    } on DioException catch (e) {
      throw Failure.unknown(message: e.message ?? 'Something went wrong');
    }
  }

  @override
  Future<String> uploadFile({required UploadParams params}) async {
    final file = File(params.path);

    if (!await file.exists()) {
      throw Failure.unknown(message: 'File not found: ${params.path}');
    }

    final fileName = file.path.split('/').last;

    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
          contentType: DioMediaType('application', 'octet-stream'),
        ),
      });

      final response = await _dio.post(
        '/upload',
        queryParameters: {
          'appname': 'explorer',
          'path': params.remotePath.rstrip('/'),
        },
        data: formData,
        onSendProgress: params.onProgress,
        options: Options(
          contentType: 'multipart/form-data',
          responseType: ResponseType.plain,
          sendTimeout: const Duration(minutes: 10),
          receiveTimeout: const Duration(minutes: 2),
          headers: {
            HttpHeaders.acceptHeader: '*/*',
            HttpHeaders.connectionHeader: 'keep-alive',
            HttpHeaders.acceptEncodingHeader: 'gzip, deflate',
          },
        ),
      );

      final responseText = response.data.toString().trim().toLowerCase();
      if (responseText == 'ok' || responseText.contains('success')) {
        return 'Upload Completed';
      } else {
        throw Failure.unknown(message: 'Upload failed: $responseText');
      }
    } on DioException catch (e) {
      throw Failure.unknown(
        message: e.response?.data?.toString() ?? e.message ?? 'Upload failed',
      );
    }
  }
}

abstract class MediaRemoteDataSource {
  Future<String> uploadFile({required UploadParams params});
  Future<Uint8List> downloadFile({required DownloadParams params});
}

extension StringExtension on String {
  String rstrip(String pattern) {
    if (endsWith(pattern)) {
      return substring(0, length - pattern.length);
    }
    return this;
  }
}

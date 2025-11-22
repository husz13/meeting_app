import 'dart:typed_data';

import 'package:either_dart/either.dart';
import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/data/media/remote/media_reomte_data_source.dart';
import 'package:voice_summary/domain/use_cases/download_media_use_case/download_media_use_case.dart';
import 'package:voice_summary/domain/use_cases/upload_media_use_case/upload_media_use_case.dart';

class MediaRepositoryImpl {
  final MediaRemoteDataSource _remoteDataSource;
  const MediaRepositoryImpl({
    required MediaRemoteDataSource mediaRemoteDataSource,
  }) : _remoteDataSource = mediaRemoteDataSource;

  Future<Result<String>> uploadFile({required UploadParams params}) async {
    try {
      final result = await _remoteDataSource.uploadFile(params: params);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Result<Uint8List>> downloadFile({
    required DownloadParams params,
  }) async {
    try {
      final result = await _remoteDataSource.downloadFile(params: params);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}

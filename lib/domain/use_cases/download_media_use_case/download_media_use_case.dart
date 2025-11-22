import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_summary/data/media/repo/media_repository.dart';

import '../../../core/domain/use_cases/base_use_case.dart';

part 'download_media_use_case.freezed.dart';

class DownloadFileUseCase implements BaseUseCase<Uint8List, DownloadParams> {
  final MediaRepositoryImpl _media;
  DownloadFileUseCase({required MediaRepositoryImpl mediaRepository})
    : _media = mediaRepository;

  @override
  Future<Result<Uint8List>> call({required DownloadParams params}) {
    return _media.downloadFile(params: params);
  }
}

@freezed
abstract class DownloadParams with _$DownloadParams {
  const DownloadParams._();

  const factory DownloadParams({
    required String filepath,
    required String filename,
    ProgressCallback? onProgress,
  }) = _DownloadParams;
}

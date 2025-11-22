import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_summary/data/media/repo/media_repository.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';

part 'upload_media_use_case.freezed.dart';

class UploadUseCase implements BaseUseCase<String, UploadParams> {
  final MediaRepositoryImpl _mediaRepository;
  UploadUseCase({required MediaRepositoryImpl mediaRepository})
    : _mediaRepository = mediaRepository;
  @override
  Future<Result<String>> call({required UploadParams params}) {
    return _mediaRepository.uploadFile(params: params);
  }
}

@freezed
abstract class UploadParams with _$UploadParams {
  const UploadParams._();
  const factory UploadParams({
    String? url,
    required String path,
    required String remotePath,
    int? chunkSize,
    ProgressCallback? onProgress,
    CancelToken? cancelToken,
  }) = _UploadParams;
}

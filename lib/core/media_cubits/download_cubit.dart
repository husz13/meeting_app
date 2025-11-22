import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/use_cases/download_media_use_case/download_media_use_case.dart';

class DownloadCubit extends Cubit<BaseState<Uint8List>> {
  DownloadCubit(this._downloadFileUseCase) : super(const BaseState.initial());
  final DownloadFileUseCase _downloadFileUseCase;
  Future<void> downloadFile({
    required String filepath,
    required String filename,
    ProgressCallback? onProgress,
  }) async {
    emit(const BaseState.loading());
    final result = await _downloadFileUseCase(
      params: DownloadParams(
        filepath: filepath,
        filename: filename,
        onProgress: onProgress,
      ),
    );

    result.fold(
      (failure) {
        emit(BaseState.failure(failure: failure));
      },
      (data) {
        emit(BaseState.success(data: data));
      },
    );
  }
}

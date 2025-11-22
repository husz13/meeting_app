import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/use_cases/upload_media_use_case/upload_media_use_case.dart';

class UploadCubit extends Cubit<BaseState<void>> {
  UploadCubit(this._uploadUseCase) : super(const BaseState.initial());
  final UploadUseCase _uploadUseCase;

  Future<void> uploadFile({
    required String localPath,
    required String remotePath,
  }) async {
    emit(const BaseState.loading());

    final result = await _uploadUseCase(
      params: UploadParams(
        path: localPath,
        remotePath: remotePath,
        onProgress: (sent, total) {
          final progress = sent / total;
          emit(BaseState.progress(progress: progress)); // return progress %
        },
      ),
    );

    result.fold(
      (f) => emit(BaseState.failure(failure: f)),
      (r) => emit(const BaseState.success(data: 1.0)), // Finished
    );
  }
}

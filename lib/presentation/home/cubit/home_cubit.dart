import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/entities/file_entity.dart';
import 'package:voice_summary/domain/use_cases/get_files_use_case/get_files_use_case.dart';

class HomeCubit extends Cubit<BaseState<List<FileEntity>>> {
  HomeCubit(this._useCase) : super(BaseState.initial());
  final GetFilesUseCase _useCase;
  Future<void> getFiles() async {
    emit(BaseState.loading());
    final result = await _useCase();
    result.fold(
      (error) {
        emit(BaseState.failure(failure: error));
      },
      (data) {
        emit(BaseState.success(data: data));
      },
    );
  }
}

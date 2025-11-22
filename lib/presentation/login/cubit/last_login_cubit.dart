import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/use_cases/get_login_data_use_case/get_login_data_use_case.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class LastLoginCubit extends Cubit<BaseState<LastLoginParams?>> {
  LastLoginCubit(this._useCase) : super(BaseState.initial());
  final GetLoginDataUseCase _useCase;
  Future<void> fetchLastLogin() async {
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

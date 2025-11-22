import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class LoginCubit extends Cubit<BaseState<void>> {
  LoginCubit(this._useCase, this.saveLoginDataUseCase)
    : super(BaseState.initial());
  final LoginUseCase _useCase;
  final SaveLoginDataUseCase saveLoginDataUseCase;
  Future<void> login({required LastLoginParams params}) async {
    emit(BaseState.loading());
    final result = await _useCase(
      params: LoginParams(userid: params.username, password: params.password),
    );
    result.fold(
      (error) {
        emit(BaseState.failure(failure: error));
      },
      (_) async {
        final saveResult = await saveLoginDataUseCase(params: params);
        saveResult.fold(
          (error) {
            emit(BaseState.failure(failure: error));
          },
          (_) {
            emit(BaseState.success(data: null));
          },
        );
      },
    );
  }
}

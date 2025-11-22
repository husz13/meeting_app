import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/data/auth/repo/auth_repo_impl.dart';
part 'login_use_case.freezed.dart';
part 'login_use_case.g.dart';

class LoginUseCase implements BaseUseCase<void, LoginParams> {
  final AuthRepoImpl authRepo;
  LoginUseCase({required this.authRepo});
  @override
  Future<Result<void>> call({required LoginParams params}) {
    return authRepo.login(params: params);
  }
}

@Freezed(toJson: true, fromJson: false)
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String userid,
    required String password,
  }) = _LoginParams;
}

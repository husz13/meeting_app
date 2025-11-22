import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/data/auth/repo/auth_repo_impl.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class GetLoginDataUseCase implements BaseUseCaseNoParams<LastLoginParams?> {
  final AuthRepoImpl authRepo;
  GetLoginDataUseCase({required this.authRepo});
  @override
  Future<Result<LastLoginParams?>> call() {
    return authRepo.getLastLogin();
  }
}

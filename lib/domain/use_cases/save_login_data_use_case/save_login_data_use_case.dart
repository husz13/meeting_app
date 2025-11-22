import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/data/auth/repo/auth_repo_impl.dart';
part 'save_login_data_use_case.freezed.dart';
part 'save_login_data_use_case.g.dart';

class SaveLoginDataUseCase implements BaseUseCase<void, LastLoginParams> {
  final AuthRepoImpl authRepo;
  SaveLoginDataUseCase({required this.authRepo});

  @override
  Future<Result<void>> call({required LastLoginParams params}) {
    return authRepo.saveLastLogin(params: params);
  }
}

@Freezed(fromJson: true, toJson: true)
abstract class LastLoginParams with _$LastLoginParams {
  const factory LastLoginParams({
    required String username,
    required String password,
    required String recordsPath,
    required String reportsPath,
  }) = _LastLoginParams;
  factory LastLoginParams.fromJson(Map<String, dynamic> json) =>
      _$LastLoginParamsFromJson(json);
}

import 'package:either_dart/either.dart';
import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/data/auth/sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:voice_summary/data/auth/sources/local/last_login_local_data_source.dart';
import 'package:voice_summary/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class AuthRepoImpl {
  final AuthRemoteDataSource _authRemoteDataSource;
  final LastLoginLocalDataSource _lastLoginLocalDataSource;
  AuthRepoImpl({
    required AuthRemoteDataSource authRemoteDataSource,
    required LastLoginLocalDataSource lastLoginLocalDataSource,
  }) : _authRemoteDataSource = authRemoteDataSource,
       _lastLoginLocalDataSource = lastLoginLocalDataSource;

  Future<Result<void>> login({required LoginParams params}) async {
    try {
      await _authRemoteDataSource.login(params: params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Result<LastLoginParams?>> getLastLogin() async {
    try {
      final result = await _lastLoginLocalDataSource.getLastLogin();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  Future<Result<void>> saveLastLogin({required LastLoginParams params}) async {
    try {
      await _lastLoginLocalDataSource.saveLastLogin(params);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}

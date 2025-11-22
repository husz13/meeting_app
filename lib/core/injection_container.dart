import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:voice_summary/core/network/network.dart';
import 'package:voice_summary/core/router/router.dart';
import 'package:voice_summary/core/utils/validators.dart';
import 'package:voice_summary/data/auth/repo/auth_repo_impl.dart';
import 'package:voice_summary/data/auth/sources/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:voice_summary/data/auth/sources/local/last_login_local_data_source.dart';
import 'package:voice_summary/data/media/remote/media_reomte_data_source.dart';
import 'package:voice_summary/data/files/remote/remote_data_source.dart';
import 'package:voice_summary/data/files/repos/files_repo.dart';
import 'package:voice_summary/data/media/repo/media_repository.dart';
import 'package:voice_summary/domain/use_cases/download_media_use_case/download_media_use_case.dart';
import 'package:voice_summary/domain/use_cases/get_files_use_case/get_files_use_case.dart';
import 'package:voice_summary/domain/use_cases/get_login_data_use_case/get_login_data_use_case.dart';
import 'package:voice_summary/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';
import 'package:voice_summary/domain/use_cases/upload_media_use_case/upload_media_use_case.dart';
import 'package:voice_summary/presentation/home/cubit/home_cubit.dart';
import 'package:voice_summary/core/media_cubits/download_cubit.dart';
import 'package:voice_summary/core/media_cubits/upload_cubit.dart';
import 'package:voice_summary/presentation/login/cubit/last_login_cubit.dart';
import 'package:voice_summary/presentation/login/cubit/login_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<MediaRemoteDataSource>(
    () => MediaRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton(() => LastLoginLocalDataSource(secureStorage: sl()));
  sl.registerLazySingleton(
    () => MediaRepositoryImpl(mediaRemoteDataSource: sl()),
  );
  sl.registerLazySingleton(() => FilesRepo(remoteDataSource: sl()));
  sl.registerLazySingleton(
    () => AuthRepoImpl(
      authRemoteDataSource: sl(),
      lastLoginLocalDataSource: sl(),
    ),
  );

  sl.registerLazySingleton(() => GetFilesUseCase(filesRepo: sl()));

  sl.registerLazySingleton(() => DownloadFileUseCase(mediaRepository: sl()));
  sl.registerLazySingleton(() => UploadUseCase(mediaRepository: sl()));
  sl.registerLazySingleton(() => LoginUseCase(authRepo: sl()));
  sl.registerLazySingleton(() => SaveLoginDataUseCase(authRepo: sl()));
  sl.registerLazySingleton(() => GetLoginDataUseCase(authRepo: sl()));

  sl.registerLazySingleton(() => HomeCubit(sl()));
  sl.registerLazySingleton(() => LoginCubit(sl(), sl()));
  sl.registerLazySingleton(() => UploadCubit(sl()));
  sl.registerLazySingleton(() => LastLoginCubit(sl()));

  sl.registerLazySingleton(() => DownloadCubit(sl()));
  sl.registerLazySingleton(() => AppRouter());
  sl.registerLazySingleton(() => Validators());
  sl.registerLazySingleton(() => FlutterSecureStorage());

  final dio = await createDio();

  sl.registerSingleton(dio);
}

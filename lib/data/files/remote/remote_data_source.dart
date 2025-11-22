import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/data/files/models/file_model.dart';
import 'package:voice_summary/domain/use_cases/get_login_data_use_case/get_login_data_use_case.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final useCase = sl<GetLoginDataUseCase>();
  Future<LastLoginParams?> getPaths() async {
    final result = await useCase();
    return result.fold(
      (f) {
        return null;
      },
      (data) {
        return data;
      },
    );
  }

  final Dio _dio;
  RemoteDataSourceImpl({required Dio dio}) : _dio = dio;
  @override
  Future<List<FileModel>> getFilesList() async {
    final loginData = await getPaths();
    try {
      final response = await _dio.get<List>(
        '/getfilelist',
        queryParameters: {'path': loginData?.reportsPath, 'authKey': ''},
      );
      return Isolate.run(() {
        return response.data!.map((e) => FileModel.fromJson(e)).toList();
      });
    } on DioException catch (e) {
      throw e.error as Failure;
    }
  }
}

abstract class RemoteDataSource {
  Future<List<FileModel>> getFilesList();
}

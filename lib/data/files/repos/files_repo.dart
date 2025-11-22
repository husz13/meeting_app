import 'package:either_dart/either.dart';
import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/data/files/remote/remote_data_source.dart';
import 'package:voice_summary/domain/entities/file_entity.dart';

class FilesRepo {
  final RemoteDataSource remoteDataSource;
  FilesRepo({required this.remoteDataSource});
  Future<Result<List<FileEntity>>> fetchFilesList() async {
    try {
      final files = await remoteDataSource.getFilesList();
      final entities = files.map((fileModel) => fileModel.toEntity()).toList();
      return Right(entities);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}

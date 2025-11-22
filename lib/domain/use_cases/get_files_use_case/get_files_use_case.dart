import 'package:voice_summary/core/domain/use_cases/base_use_case.dart';
import 'package:voice_summary/data/files/repos/files_repo.dart';
import 'package:voice_summary/domain/entities/file_entity.dart';

class GetFilesUseCase implements BaseUseCaseNoParams<List<FileEntity>> {
  final FilesRepo filesRepo;
  GetFilesUseCase({required this.filesRepo});
  @override
  Future<Result<List<FileEntity>>> call() {
    return filesRepo.fetchFilesList();
  }
}

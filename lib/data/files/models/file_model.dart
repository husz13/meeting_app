import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voice_summary/domain/entities/file_entity.dart';
part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
abstract class FileModel with _$FileModel {
  const FileModel._();
  const factory FileModel({required String path, required String name}) =
      _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
  FileEntity toEntity() {
    return FileEntity(path: path, name: name);
  }
}

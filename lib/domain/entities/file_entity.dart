import 'package:freezed_annotation/freezed_annotation.dart';
part 'file_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class FileEntity with _$FileEntity {
  const FileEntity._();
  const factory FileEntity({required String path, required String name}) =
      _FileEntity;
}

import 'dart:io';

import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

class DocumentHelper {
  static Future<Directory> getRecordingsDir() async {
    final dir = await getDownloadsDirectory();
    final recordingsDir = Directory('${dir?.path}/recordings');
    if (!await recordingsDir.exists()) {
      await recordingsDir.create(recursive: true);
    }
    Logger().i('Recordings directory path: ${recordingsDir.path}');

    return recordingsDir;
  }
}

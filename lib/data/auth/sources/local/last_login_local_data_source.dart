import 'dart:convert';
import 'dart:isolate';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:voice_summary/core/network/failure/failure.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';

class LastLoginLocalDataSource {
  final FlutterSecureStorage secureStorage;

  LastLoginLocalDataSource({required this.secureStorage});

  Future<void> saveLastLogin(LastLoginParams params) async {
    try {
      await secureStorage.write(
        key: 'last_login',
        value: jsonEncode(params.toJson()),
      );
    } catch (e) {
      throw Failure.unknown(message: e.toString());
    }
  }

  Future<LastLoginParams?> getLastLogin() async {
    try {
      final data = await secureStorage.read(key: 'last_login');
      if (data == null) {
        return null;
      } else {
        return Isolate.run(() {
          return LastLoginParams.fromJson(json.decode(data));
        });
      }
    } catch (e) {
      throw Failure.unknown(message: e.toString());
    }
  }
}

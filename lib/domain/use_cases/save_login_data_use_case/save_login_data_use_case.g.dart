// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_login_data_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastLoginParams _$LastLoginParamsFromJson(Map<String, dynamic> json) =>
    _LastLoginParams(
      username: json['username'] as String,
      password: json['password'] as String,
      recordsPath: json['recordsPath'] as String,
      reportsPath: json['reportsPath'] as String,
    );

Map<String, dynamic> _$LastLoginParamsToJson(_LastLoginParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'recordsPath': instance.recordsPath,
      'reportsPath': instance.reportsPath,
    };

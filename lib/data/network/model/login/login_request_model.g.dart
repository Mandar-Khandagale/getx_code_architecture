// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInRequestBody _$LogInRequestBodyFromJson(Map<String, dynamic> json) =>
    LogInRequestBody(
      userName: json['username'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LogInRequestBodyToJson(LogInRequestBody instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'password': instance.password,
    };

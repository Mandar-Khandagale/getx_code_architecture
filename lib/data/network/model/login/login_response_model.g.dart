// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel()
      ..userName = json['username'] as String
      ..firstName = json['firstName'] as String
      ..lastName = json['lastName'] as String;

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

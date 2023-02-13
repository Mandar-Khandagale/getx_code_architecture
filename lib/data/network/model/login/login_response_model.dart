import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: AppConstant.loginApiUserName)
  String userName = "";

  @JsonKey(name: AppConstant.loginApiFirstName)
  String firstName = "";

  @JsonKey(name: AppConstant.loginApiLastName)
  String lastName = "";


  LoginResponseModel();

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LogInRequestBody {

  @JsonKey(name: AppConstant.loginApiUserName)
  String ? userName = "";

  @JsonKey(name: AppConstant.loginApiPassword)
  String ? password = "";

  LogInRequestBody({
    required this.userName,
    required this.password,
  });

  factory LogInRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LogInRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LogInRequestBodyToJson(this);

}
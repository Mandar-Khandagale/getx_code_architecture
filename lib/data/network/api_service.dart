import 'package:dio/dio.dart';
import 'package:getx_code_architecture/data/network/model/login/login_request_model.dart';
import 'package:getx_code_architecture/data/network/model/login/login_response_model.dart';
import 'package:getx_code_architecture/data/network/network_properties.dart';
import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: NetworkProperties.baseUrl)
//flutter pub run build_runner build
// or
//flutter clean
//flutter pub get
//flutter packages pub run build_runner build --delete-conflicting-outputs

abstract class ApiService {
  factory ApiService(Dio dioBinds, {String? baseUrl}) {
    return _ApiService(dioBinds, baseUrl: baseUrl);
  }



  @POST(AppConstant.loginApi)
  Future<HttpResponse<LoginResponseModel>> loginApi(
      @Body() LogInRequestBody logInRequestBody);

}

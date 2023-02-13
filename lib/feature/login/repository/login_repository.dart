import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:getx_code_architecture/data/network/api_service.dart';
import 'package:getx_code_architecture/data/network/model/login/login_request_model.dart';
import 'package:getx_code_architecture/data/network/model/login/login_response_model.dart';
import 'package:getx_code_architecture/data/network/utils/network_error.dart';
import 'package:getx_code_architecture/data/network/utils/safe_api_call.dart';

class LoginRepository {
  final ApiService? apiService;
  final Dio? dioBind;

  LoginRepository({this.apiService, this.dioBind});

  /// login api
  Future<Either<NetworkError, LoginResponseModel>> loginRequest(
      {required LogInRequestBody logInRequestBody}) async {
    final data = await safeApiCall(
      apiService!.loginApi(logInRequestBody),
    );
    return data.fold(
      (l) => Left(l),
      (r) {
        return Right(
          r.data,
        );
      },
    );
  }
}

import 'dart:convert';

import 'package:log_in/models/login_auth.dart';
import 'package:log_in/models/login_response.dart';
import 'package:log_in/utilities/constants.dart';
import 'package:log_in/utilities/http_wrapper.dart';

class LogIn {
  Future<LogInResponse> login(LogInAuth loginRequestModel) async {
    try {
      final response = await HttpWrapper().post(
          Constants.baseurl + Constants.logInendPoint,
          body: loginRequestModel.toJson());

      return LogInResponse.fromJson(json.decode(response));
    } catch (e) {
      throw Exception("Something wrong happened");
    }
  }
}

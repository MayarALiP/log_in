import 'dart:convert';

import 'package:log_in/models/LogInAuth.dart';
import 'package:log_in/models/LogInResponse.dart';
import 'package:log_in/utilities/Constants.dart';
import 'package:log_in/utilities/HttpWrapper.dart';

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

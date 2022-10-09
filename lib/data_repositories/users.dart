import 'dart:convert';

import 'package:log_in/models/user_model.dart';
import 'package:log_in/utilities/constants.dart';
import 'package:log_in/utilities/http_wrapper.dart';

class Users {
  Future<List<UserModel>> getUsers() async {
    try {
      String response =
          await HttpWrapper().get(Constants.baseurl + Constants.userendpoint);
      Map jsonResponse = jsonDecode(response);
      Iterable usersIterable = jsonResponse['data'];
      List<UserModel> usersList = usersIterable
          .map((jsonItem) => UserModel.fromJson(jsonItem))
          .toList();
      return usersList;
    } catch (error) {
      throw Exception("Something wrong happened");
    }
  }
}

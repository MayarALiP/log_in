import 'dart:convert';

import 'package:log_in/models/User.dart';
import 'package:log_in/utilities/Constants.dart';
import 'package:log_in/utilities/HttpWrapper.dart';

class Users {
  Future<List<User>> getUsers() async {
    try {
      String response =
          await HttpWrapper().get(Constants.baseurl + Constants.userendpoint);
      Map jsonResponse = jsonDecode(response);
      Iterable usersIterable = jsonResponse['data'];
      List<User> usersList =
          usersIterable.map((jsonItem) => User.fromJson(jsonItem)).toList();
      return usersList;
    } catch (error) {
      throw Exception("Something wrong happened");
    }
  }
}

class LogInAuth {
  String? email, password;

  LogInAuth({this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email!.trim(),
      'password': password!.trim()
    };

    return map;
  }
}

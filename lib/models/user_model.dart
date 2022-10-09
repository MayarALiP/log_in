class UserModel {
  String firstName, lastName, email, image;
  int id;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        image: json['avatar']);
  }
}

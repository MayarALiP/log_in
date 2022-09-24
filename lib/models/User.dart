class User {
  String firstName, lastName, email, image;
  int id;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        image: json['avatar']);
  }
}

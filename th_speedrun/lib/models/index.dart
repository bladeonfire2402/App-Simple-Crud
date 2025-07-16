class UserModel {
  final String email;
  final String name;
  final String password;
  final int gender;
  final Map<String, bool> favourite;

  UserModel({
    required this.email,
    required this.favourite,
    required this.gender,
    required this.name,
    required this.password,
  });
}


class User {
  final int id;
  final String username;
  final String email;
  final bool isActive;

  User({required this.id, required this.username, required this.email, required this.isActive});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      isActive: json['is_active'],
    );
  }
}

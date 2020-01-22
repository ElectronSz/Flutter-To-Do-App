class User {
  final String name;
  final String email;

  User({this.name, this.email});

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['namen'],
      email: json['email'],
    );
  }
}

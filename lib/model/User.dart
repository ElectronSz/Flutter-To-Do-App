class User {
  final int id;
  final String username;
  final String fname;
  final String lname;
  final String fullname;
  final String bio;

  User({this.id, this.username, this.fname, this.lname, this.fullname, this.bio});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      fname: json['fname'],
      lname: json['lname'],
      fullname: json['fullname'],
      bio: json['bio']
    );
  }
}
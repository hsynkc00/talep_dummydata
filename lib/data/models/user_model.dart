class UserModel {
  final String uid;
  final String email;
  final String username;

  const UserModel(
      {required this.uid, required this.email, required this.username});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      email: json['email'],
      username: json['username'],
    );
  }

  // Object to JSON
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'username': username,
    };
  }
}

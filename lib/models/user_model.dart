class UserModel {
  final String name;
  final String email;
  final String fcmToken;
  final String accessToken;

  UserModel({
    required this.name,
    required this.email,
    required this.fcmToken,
    required this.accessToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['user']['name'],
      email: json['user']['email'],
      fcmToken: json['user']['fcm_token'],
      accessToken: json['access_token'],
    );
  }
}

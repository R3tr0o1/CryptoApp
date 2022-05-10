class Userinfo {
  String id;
  String? userName;
  String? fullName;
  String? phoneNumber;
  String email;

  Userinfo(
      {required this.id,
      this.userName,
      this.fullName,
      this.phoneNumber,
      required this.email});

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'fullName': fullName,
        'phoneNumber': phoneNumber,
        'email': email
      };
  static Userinfo fromJson(Map<String, dynamic> json) => Userinfo(
      id: json['id'],
      fullName: json['fullName'] ?? '',
      email: json['email'] ?? '');
}

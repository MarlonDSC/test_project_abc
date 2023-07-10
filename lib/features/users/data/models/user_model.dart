class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String gender;
  final String pictureUrl;
  final String phone;
  final String birthday;
  final String twitterHandle;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.gender,
    required this.pictureUrl,
    required this.phone,
    required this.birthday,
    required this.twitterHandle,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'username': userName,
      'email': email,
      'gender': gender,
      'pictureURL': pictureUrl,
      'phone': phone,
      'birthday': birthday.toString(),
      'twitterHandle': twitterHandle,
    };
  }

  factory UserModel.fromJson(dynamic map) {
    return UserModel(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      userName: map['username'],
      email: map['email'],
      gender: map['gender'],
      pictureUrl: map['pictureURL'],
      phone: map['phone'],
      birthday: map['birthday'],
      twitterHandle: map['twitterHandle'],
    );
  }
}

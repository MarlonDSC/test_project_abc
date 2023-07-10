import 'package:equatable/equatable.dart';
import 'package:test_project_abc/features/users/data/models/user_model.dart';

class User extends Equatable {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? userName;
  final String? email;
  final String? gender;
  final String? pictureUrl;
  final String? phone;
  final String? birthday;
  final String? twitterHandle;

  const User({
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

  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? userName,
    String? email,
    String? gender,
    String? pictureUrl,
    String? phone,
    String? birthday,
    String? twitterHandle,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      email: email ?? this.userName,
      gender: gender ?? this.userName,
      pictureUrl: pictureUrl ?? this.pictureUrl,
      phone: phone ?? this.phone,
      birthday: birthday ?? this.birthday,
      twitterHandle: twitterHandle ?? this.twitterHandle,
    );
  }

  factory User.fromModel(UserModel model) {
    return User(
      id: model.id,
      firstName: model.firstName,
      lastName: model.lastName,
      userName: model.userName,
      email: model.email,
      gender: model.gender,
      pictureUrl: model.pictureUrl,
      phone: model.phone,
      birthday: model.birthday,
      twitterHandle: model.twitterHandle,
    );
  }

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        userName,
        email,
        gender,
        pictureUrl,
        phone,
        birthday,
        twitterHandle,
      ];

  //TODO: Create constructor to serialize from model to entity
}

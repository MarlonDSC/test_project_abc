part of 'users_bloc_bloc.dart';

abstract class UsersBlocState extends Equatable {
  const UsersBlocState();

  @override
  List<Object> get props => [];
}

class SuccessUsers extends UsersBlocState {
  final List<User> users;

  const SuccessUsers(this.users);
}

class LoadingUsers extends SuccessUsers {
  const LoadingUsers(super.users);
}

class FailedUsers extends UsersBlocState {
  final String error;
  const FailedUsers(this.error);
}

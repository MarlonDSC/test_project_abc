part of 'users_bloc_bloc.dart';

abstract class UsersBlocEvent extends Equatable {
  const UsersBlocEvent();

  @override
  List<Object> get props => [];
}

class GetUsers extends UsersBlocEvent {
  const GetUsers();
}

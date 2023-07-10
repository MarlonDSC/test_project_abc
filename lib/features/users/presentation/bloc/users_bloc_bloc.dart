import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_project_abc/core/usecases/usecase.dart';
import 'package:test_project_abc/features/users/domain/entities/user_entity.dart';
import 'package:test_project_abc/features/users/domain/usecases/get_user.dart';

part 'users_bloc_event.dart';
part 'users_bloc_state.dart';

class UsersBlocBloc extends Bloc<UsersBlocEvent, UsersBlocState> {
  final GetUserUseCase _getUsers;
  UsersBlocBloc(this._getUsers) : super(const LoadingUsers([])) {
    on<GetUsers>((event, emit) async {
      try {
        final users = await _getUsers.call();
        if (users is DataSuccess && users.data!.isNotEmpty) {
          print(users.data!);
          emit(SuccessUsers(users.data!));
        }
        if (users is DataFailed) {
          emit(FailedUsers(users.error!.message ?? 'An error has ocurred'));
        }
      } catch (e) {
        print(e);
      }
    });
  }
}

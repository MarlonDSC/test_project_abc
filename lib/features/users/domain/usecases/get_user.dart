import 'package:test_project_abc/core/usecases/usecase.dart';
import 'package:test_project_abc/features/users/domain/entities/user_entity.dart';
import 'package:test_project_abc/features/users/domain/repository/user_repository.dart';

class GetUserUseCase implements UseCase<Result<List<User>>, void> {
  final UserRepository _userRepository;
  GetUserUseCase(this._userRepository);

  @override
  Future<Result<List<User>>> call({void params}) {
    return _userRepository.getUsers();
  }
}

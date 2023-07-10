import 'package:test_project_abc/core/usecases/usecase.dart';
import 'package:test_project_abc/features/users/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Result<List<User>>> getUsers();
}

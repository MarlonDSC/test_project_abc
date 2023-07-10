import 'package:test_project_abc/core/usecases/usecase.dart';
import 'package:test_project_abc/features/users/data/remote_data_source/user_api.dart';
import 'package:test_project_abc/features/users/domain/entities/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:test_project_abc/features/users/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserAPIService _userAPIService;

  UserRepositoryImpl(this._userAPIService);

  @override
  Future<Result<List<User>>> getUsers() async {
    try {
      final httpResponse = await _userAPIService.getUsers();
      print(httpResponse.response.statusCode);
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(
            httpResponse.data.map((e) => User.fromModel(e)).toList());
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}

import 'package:retrofit/retrofit.dart';
import 'package:test_project_abc/core/constants/api_constants.dart';
import 'package:test_project_abc/features/users/data/models/user_model.dart';
import 'package:dio/dio.dart';
part 'user_api.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class UserAPIService {
  factory UserAPIService(Dio dio) = _UserAPIService;

  @GET("/users")
  Future<HttpResponse<List<UserModel>>> getUsers();
}

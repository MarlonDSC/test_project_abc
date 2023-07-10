import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:test_project_abc/features/users/data/remote_data_source/user_api.dart';
import 'package:test_project_abc/features/users/data/repository/user_repository_impl.dart';
import 'package:test_project_abc/features/users/domain/usecases/get_user.dart';
import 'package:test_project_abc/features/users/presentation/bloc/users_bloc_bloc.dart';

import 'features/users/domain/repository/user_repository.dart';

final sl = GetIt.instance;
void initDependencies() {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton<UserAPIService>(UserAPIService(sl()));

  sl.registerFactory<UserRepository>(
    () => UserRepositoryImpl(sl()),
  );

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase(sl()));

  sl.registerFactory<UsersBlocBloc>(() => UsersBlocBloc(sl()));
}

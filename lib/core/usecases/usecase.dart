import 'package:dio/dio.dart';

abstract class Result<T> {
  final T? data;
  final DioException? error;

  const Result({this.data, this.error});
}

class DataSuccess<T> extends Result<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends Result<T> {
  const DataFailed(DioException error) : super(error: error);
}

abstract class UseCase<Type, Params> {
  Future<Type> call({Params params});
}

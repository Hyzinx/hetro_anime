import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hetro_anime/business/cubit/movie_cubit.dart';
import 'package:hetro_anime/data/api/movie_api.dart';
import 'package:hetro_anime/data/repositories/movie_repository.dart';

GetIt getIt = GetIt.instance;

void initializeDependency() {
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepository(getIt<MovieApi>()),
  );
  getIt.registerLazySingleton<MovieCubit>(
    () => MovieCubit(getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<MovieApi>(() => MovieApi(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = Duration(seconds: 10)
    ..options.receiveTimeout = Duration(seconds: 10);
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ),
  );
  return dio;
}

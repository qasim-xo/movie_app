import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository());
}

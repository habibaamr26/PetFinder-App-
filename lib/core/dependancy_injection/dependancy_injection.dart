import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/data/api/home_api.dart';
import '../../feature/home/data/repository/home_repository.dart';
import '../../feature/home/presentation/cubit/home_cubit.dart';
import '../networking/dio_factory.dart';

GetIt getIt = GetIt.instance;

void initDependencyInjection() {
  homeInit();
}

void homeInit() {
  getIt.registerLazySingleton<Dio>(() => DioFactory().getDio());

  getIt.registerLazySingleton<HomeApi>(() => HomeApi(getIt<Dio>()));
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));

  getIt.registerLazySingleton<HomeCubit>(
    () => HomeCubit(homeRepository: getIt()),
  );
}

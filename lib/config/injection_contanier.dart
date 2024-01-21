import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_blue_ray/features/task/task_injection.dart';

final sl = GetIt.instance;
Future<void> init() async {
  // Features
  await categoryByIdInjection(sl);

  // sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

  sl.registerLazySingleton(() => Dio());
}

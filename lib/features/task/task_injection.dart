import 'package:get_it/get_it.dart';
import 'package:task_blue_ray/features/task/data/datasources/category_local_data_source.dart';
import 'package:task_blue_ray/features/task/data/repositories/category_repo.dart';
import 'package:task_blue_ray/features/task/domain/repositories/category_repo.dart';
import 'package:task_blue_ray/features/task/domain/usecases/category_usecase.dart';
import 'package:task_blue_ray/features/task/presentation/provider/provider_category.dart';

Future<void> categoryByIdInjection(GetIt sl) async {
  // providers
  sl.registerFactory<ProviderCategory>(() => ProviderCategory(sl()));

  // useCases
  sl.registerLazySingleton<CategoryUseCase>(() => CategoryUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<CategoryRepo>(() => CategoryRepoImpl(sl()));

  // Data Source
  sl.registerLazySingleton<CategoryLocalDataSource>(
      () => CategoryLocalDataSourceImpl());
}

import 'package:task_blue_ray/features/task/data/models/model_category.dart';
import 'package:task_blue_ray/features/task/domain/repositories/category_repo.dart';

class CategoryUseCase {
  final CategoryRepo categoryRepo;

  CategoryUseCase(this.categoryRepo);

  Future<CategoryModel?> getCategoryById() async =>
      await categoryRepo.getCategoryById();
  Future<CategoryModel?> callFakeApi() async =>
      await categoryRepo.callFakeApi();
}

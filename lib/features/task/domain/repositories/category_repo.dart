import 'package:task_blue_ray/features/task/data/models/model_category.dart';

abstract class CategoryRepo {
  Future<CategoryModel?> getCategoryById();
  Future<CategoryModel?> callFakeApi();
}


import 'package:task_blue_ray/features/task/data/datasources/category_local_data_source.dart';
import 'package:task_blue_ray/features/task/data/models/model_category.dart';
import 'package:task_blue_ray/features/task/domain/repositories/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryLocalDataSource categoryLocalDataSource;

  CategoryRepoImpl(this.categoryLocalDataSource);
  @override
  Future<CategoryModel?> getCategoryById() async {
    try {
      return await categoryLocalDataSource.getCategoryById();
    } catch (e) {
      return null;
    }
  }
  
  @override
  Future<CategoryModel?> callFakeApi() async{
    try {
      return await categoryLocalDataSource.callFakeApi();
    } catch (e) {
      return null;
    }
  }
}

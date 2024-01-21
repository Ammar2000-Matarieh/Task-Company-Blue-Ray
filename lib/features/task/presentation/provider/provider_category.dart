import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_blue_ray/features/task/data/models/model_category.dart';
import 'package:task_blue_ray/features/task/domain/usecases/category_usecase.dart';

enum States { init, error, loading, success }

class ProviderCategory extends ChangeNotifier {
  final CategoryUseCase categoryUseCase;

  ProviderCategory(this.categoryUseCase);
  States state = States.init;
  CategoryModel? model;

  Future<void> getCategoryById() async {
    state = States.loading;
    notifyListeners();
    try {
      final res = await categoryUseCase.getCategoryById();
      model = res;
      state = States.success;
      notifyListeners();
    } catch (e) {
      state = States.error;
      notifyListeners();
    }
  }

  Future<void> callFakeApi() async {
    state = States.loading;
    notifyListeners();
    try {
      final res = await categoryUseCase.callFakeApi();
      model = res;
      state = States.success;
      notifyListeners();
    } catch (e) {
      state = States.error;
      notifyListeners();
    }
  }

}

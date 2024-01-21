import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:task_blue_ray/features/task/data/models/model_category.dart';

abstract class CategoryLocalDataSource {
  Future<CategoryModel?> getCategoryById();
  Future<CategoryModel?> callFakeApi();
}

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  @override
  Future<CategoryModel?> getCategoryById() async {
    try {
      final dio = Dio();
      String baseUrl = 'https://siyam.br-ws.com/get-content-by-category-id';
      final res = await dio.post(baseUrl, queryParameters: {"Category_id": 1});

      if (res.statusCode == 200) {
        return CategoryModel.fromJson(res.data[0]);
      }
      return null;
    } catch (e) {
      log(e.toString());

      return null;
    }
  }

  @override
  Future<CategoryModel?> callFakeApi() async {
    try {
      final dio = Dio();
      String baseUrl =
          'https://65ad611fadbd5aa31be0ae5e.mockapi.io/api/v1/get-content-by-category-id';
      final res = await dio.get(baseUrl);

      if (res.statusCode == 200) {
        return CategoryModel.fromJson(res.data[0]);
      }
      return null;
    } catch (e) {
      log(e.toString());

      return null;
    }
  }
}

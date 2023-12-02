import 'package:dio/dio.dart';
import 'package:first_broject/modeling/category_model.dart';

class CategoriesRepository {
  final _dio = Dio();

  Future<CategoriesModel> getCategories() async {
    final response = await _dio.get('https://student.valuxapps.com/api/categories');
    final categoryData = CategoriesModel.fromJson(response.data);
    return categoryData;
  }
}

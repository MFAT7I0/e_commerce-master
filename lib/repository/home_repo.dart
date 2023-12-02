import 'package:dio/dio.dart';
import 'package:first_broject/modeling/home_model.dart';

class HomeRepo {
  final _dio = Dio();

  Future<HomeModel> getProductsCategory() async {
    String productNum;
    final response = await _dio.get('https://student.valuxapps.com/api/products?category_id=44');
    final modelData = HomeModel.fromJson(response.data);
    return modelData;
  }
}

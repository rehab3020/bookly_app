import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static const String _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiServices(this._dio);

  Future<BooksModel> get({required String endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    return BooksModel.fromJson(response.data);
  }
}

import 'package:dio/dio.dart';

class ApiServices {
  static String baseUrl = "https://www.googleapis.com/books/v1/";
  Dio dio;

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}

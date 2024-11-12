import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return ServerFailure(
            errorMessage: 'Request to API server was cancelled');
      case DioErrorType.connectTimeout:
        return ServerFailure(
            errorMessage: 'Connection timeout with API server');
      case DioErrorType.receiveTimeout:
        return ServerFailure(
            errorMessage: 'Receive timeout in connection with API server');
      case DioErrorType.response:
        if (dioError.response != null) {
          return ServerFailure(
              errorMessage: dioError.response!.data['error']['message']);
        } else {
          return ServerFailure(errorMessage: 'Unexpected error occurred');
        }
      case DioErrorType.sendTimeout:
        return ServerFailure(
            errorMessage: 'Send timeout in connection with API server');
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No internet connection detected');
        } else {
          return ServerFailure(
            errorMessage: 'Unexpected error occurred',
          );
        }
      default:
        return ServerFailure(
            errorMessage: 'Opps there was an Error, please try again!');
    }
  }
}

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<Item>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              "volumes?q=computer science&Filtering=free-ebooks&Sorting=newest");
      List<Item> books = data.items;
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: "volumes?q=subject:Programming&Filtering=free-ebooks");
      List<Item> books = data.items;
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchSimilarBooks({required String category}) async{

    try {
      var data = await apiServices.get(
          endPoint: "volumes?q=subject:$category&Filtering=free-ebooks");
      List<Item> books = data.items;
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}

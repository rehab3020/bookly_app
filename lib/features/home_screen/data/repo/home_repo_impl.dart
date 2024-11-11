import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
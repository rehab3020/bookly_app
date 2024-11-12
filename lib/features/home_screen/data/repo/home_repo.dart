import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchNewestBooks();
  Future<List<Item>> fetchFeaturedBooks();
}

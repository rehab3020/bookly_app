import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  final HomeRepo homeRepo;
  FeatureBooksCubit({required this.homeRepo}) : super(FeatureBooksInitial());

  Future<void> fetchFeatureBooks() async {
    print("Fetching featured books..."); // Debug log
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        print("Failed to fetch books: ${failure.errorMessage}"); // Debug log
        emit(FeatureBooksFailure(failure.errorMessage));
      },
      (books) {
        print(
            "Successfully fetched books, count: ${books.length}"); // Debug log
        emit(FeatureBooksSuccess(books));
      },
    );
  }
}

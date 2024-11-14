part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<Item> books;
  NewestBooksSuccess(this.books);
}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailure(this.errorMessage);
}

final class NewestBooksLoading extends NewestBooksState {}

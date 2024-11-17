import 'package:bookly/constants.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  final Item book;
  const BookDetailsScreen(
      {super.key, required this.book,});

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo.categories[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: appPadding,
          left: appPadding,
          right: appPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(height: 20),
              BookDetailSection(
                book: widget.book,
              ),
              const SizedBox(
                height: 50,
              ),
              const SimilarBooksSection(),
            ],
          ),
        ),
      ),
    );
  }
}

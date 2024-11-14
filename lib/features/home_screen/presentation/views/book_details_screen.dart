import 'package:bookly/constants.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: appPadding,
          left: appPadding,
          right: appPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBookDetailsAppBar(),
              SizedBox(height: 20),
              BookDetailSection(),
              SizedBox(
                height: 50,
              ),
              SimilarBooksSection(),
            ],
          ),
        ),
      ),
    );
  }
}

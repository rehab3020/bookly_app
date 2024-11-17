import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/action_button.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  final Item book;
  const BookDetailSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomBookImage(
        book: book,
      ),
      const SizedBox(height: 40),
      Text(
        book.volumeInfo.title,
        style: AppStyles.textStyle30,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign:  TextAlign.center,
      ),
      Text(
        book.volumeInfo.authors[0],
        style: AppStyles.textStyle18.copyWith(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      ),
      const SizedBox(height: 18),
      //  const BookRating(),
      const SizedBox(
        height: 40,
      ),
      const ActionButton(),
    ]);
  }
}

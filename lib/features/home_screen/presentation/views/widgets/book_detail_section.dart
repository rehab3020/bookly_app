import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/action_button.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomBookImage(
        imageUrl: 'https://th.bing.com/th/id/OIP.aftZazpbm7dwWGHdUnYzkwHaFl?rs=1&pid=ImgDetMain',
      ),
      const SizedBox(height: 40),
      const Text(
        'The Jungle Book',
        style: AppStyles.textStyle30,
      ),
      Text(
        'Rudyard Kipling',
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

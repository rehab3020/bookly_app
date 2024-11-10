import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/action_button.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/details_screen_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

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
              const CustomBookImage(),
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
              const BookRating(),
              const SizedBox(
                height: 40,
              ),
              const ActionButton(),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You might also like',
                  style: AppStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DetailsScreenListView(),
            ],
          ),
        ),
      ),
    );
  }
}

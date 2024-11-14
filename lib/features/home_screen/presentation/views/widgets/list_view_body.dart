import 'package:bookly/core/utils/loading_indicator.dart';
import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/features/home_screen/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBody extends StatelessWidget {
  const ListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(message: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

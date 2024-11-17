import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/loading_indicator.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreenListView extends StatelessWidget {
  const DetailsScreenListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                width: 0.25,
                book:  state.books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(message: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

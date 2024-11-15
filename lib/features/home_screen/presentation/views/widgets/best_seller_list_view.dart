import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/loading_indicator.dart';
import 'package:bookly/features/home_screen/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/list_view_item_with_some_book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => ListViewItemBookDetails(
              book: state.books[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(message: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

import 'package:bookly/features/home_screen/presentation/views/widgets/list_view_item_with_some_book_details.dart';
import 'package:flutter/material.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const ListViewItemBookDetails(),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: 5,
    );
  }
}

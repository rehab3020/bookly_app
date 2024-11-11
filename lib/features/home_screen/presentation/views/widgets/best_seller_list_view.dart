import 'package:bookly/features/home_screen/presentation/views/widgets/list_view_item_with_some_book_details.dart';
import 'package:flutter/material.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const ListViewItemBookDetails(),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: 5,
    );
  }
}

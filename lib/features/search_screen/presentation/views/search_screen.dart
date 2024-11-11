import 'package:bookly/constants.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/list_view_search.dart';
import 'package:bookly/features/search_screen/presentation/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: appPadding,
          left: appPadding,
          right: appPadding,
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomSearchTextField(),
            // SizedBox(height: 20),
            Expanded(child: ListViewSearch()),
          ],
        ),
      ),
    );
  }
}

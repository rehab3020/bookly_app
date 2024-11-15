import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/list_view_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: appPadding,
          left: appPadding,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListViewBody(),
                        SizedBox(height: 50),
                        Text(
                          'Newest Books',
                          style: AppStyles.textStyle18,
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: BestSellerItemListView(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

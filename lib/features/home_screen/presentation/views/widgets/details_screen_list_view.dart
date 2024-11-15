import 'package:bookly/features/home_screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class DetailsScreenListView extends StatelessWidget {
  const DetailsScreenListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomBookImage(
            imageUrl:
                'https://th.bing.com/th/id/OIP.aftZazpbm7dwWGHdUnYzkwHaFl?rs=1&pid=ImgDetMain',
            width: 0.22,
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 5,
        ));
  }
}

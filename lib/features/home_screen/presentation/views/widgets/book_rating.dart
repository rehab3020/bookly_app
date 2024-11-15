import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final double bookRating;
  final int bookRatingCount;
  const BookRating(
      {super.key, required this.bookRating, required this.bookRatingCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 15,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            bookRating.toString(),
            style: AppStyles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '($bookRatingCount)',
            style: AppStyles.textStyle14.copyWith(
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}

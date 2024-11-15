import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/presentation/views/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewItemBookDetails extends StatelessWidget {
  final Item book;
  const ListViewItemBookDetails({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/bookDetails'),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: book.volumeInfo.imageLinks.thumbnail,
                fit: BoxFit.fill,
              ),
            ),
          ),
          // const Spacer(),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    book.volumeInfo.title,
                    style: AppStyles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                Text(
                  book.volumeInfo.authors[0],
                  style: AppStyles.textStyle14.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      book.volumeInfo.publishedDate,
                      style: AppStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    BookRating(
                      bookRating: book.volumeInfo.averageRating ?? 0.0,
                      bookRatingCount: book.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

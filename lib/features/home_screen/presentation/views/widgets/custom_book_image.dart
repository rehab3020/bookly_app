import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final Item book;
  final double? width;
  const CustomBookImage({
    super.key,
    required this.book, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/bookDetails',
        arguments: book,
      ),
      child: Container(
        width: width == null
            ? MediaQuery.of(context).size.width * 0.42
            : MediaQuery.of(context).size.width * width!,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          // child: Image.asset(AssetsValues.homeImage, fit: BoxFit.fill),
          // child: Image.network(
          //   imageUrl ,
          //   fit: BoxFit.fill,
          //   errorBuilder: (context, error, stackTrace) {
          //     return const Center(child: Text('Failed to load image'));
          //   },
          // ),
          child: CachedNetworkImage(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Center(
              child: Text('Failed to load image'),
            ),
          ),
        ),
      ),
    );
  }
}

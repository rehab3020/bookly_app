import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final double? width;
  const CustomBookImage({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/bookDetails'),
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
          child: Image.asset(AssetsValues.homeImage, fit: BoxFit.fill),
        ),
      ),
    );
  }
}

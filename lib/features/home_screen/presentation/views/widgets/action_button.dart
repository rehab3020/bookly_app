import 'package:bookly/core/utils/custom_button.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            title: '19.99\$',
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            title: 'Free Preview',
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            onPressed: () {},
            textStyle: AppStyles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

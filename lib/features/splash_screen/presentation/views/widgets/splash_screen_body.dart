import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(AssetsValues.logo),
            const Spacer(
              flex: 3,
            ),
            LoadingAnimationWidget.stretchedDots(color: Colors.white, size: 40,),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

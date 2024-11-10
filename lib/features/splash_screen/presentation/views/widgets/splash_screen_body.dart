import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

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
            buildAnimatedTextKit(),
            const SizedBox(
              height: 20,
            ),
            LoadingAnimationWidget.stretchedDots(
              color: Colors.white,
              size: 40,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  AnimatedTextKit buildAnimatedTextKit() {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          'Read Free Books',
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 150),
        ),
      ],
    );
  }
}

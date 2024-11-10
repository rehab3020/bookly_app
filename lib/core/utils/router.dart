import 'package:bookly/features/home_screen/presentation/views/book_details_screen.dart';
import 'package:bookly/features/home_screen/presentation/views/home_screen.dart';
import 'package:bookly/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/bookDetails':
        return MaterialPageRoute(builder: (_) => const BookDetailsScreen());
      default:
        null;
    }
    return null;
  }
}

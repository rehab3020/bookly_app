import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home_screen/data/models/book_model.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home_screen/presentation/manager/similar_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/views/book_details_screen.dart';
import 'package:bookly/features/home_screen/presentation/views/home_screen.dart';
import 'package:bookly/features/search_screen/presentation/views/search_screen.dart';
import 'package:bookly/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/bookDetails':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SimilarBooksCubit(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
            child: BookDetailsScreen(
              book: settings.arguments as Item,
            ),
          ),
        );
      case '/searchScreen':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}

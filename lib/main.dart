import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home_screen/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home_screen/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home_screen/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            homeRepo: getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}

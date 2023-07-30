import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/injection.dart';
import 'package:movies_app/persentation/blocs/bloc/trending_movie_bloc.dart';
import 'package:movies_app/persentation/pages/home_page.dart';
import 'package:movies_app/persentation/pages/splash_screen_page.dart';
import 'package:movies_app/theme.dart';

void main() {
  AppModule.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => KiwiContainer().resolve<TrendingMovieBloc>(),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        darkTheme: darkTheme,
        theme: lightTheme,
        routerConfig: _router,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: SplashScreenpage.routeName,
      builder: (context, state) => const SplashScreenpage(),
    ),
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

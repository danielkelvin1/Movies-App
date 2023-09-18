import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/injection.dart';
import 'package:movies_app/persentation/blocs/movies/now_playing/now_playing_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/popular/popular_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/top_rated/top_rated_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/trending/trending_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/upcoming/upcoming_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/airing_today/airing_today_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/on_the-air/on_the_air_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/popular/popular_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/top_rated/top_rated_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/trending/trending_tv_bloc.dart';
import 'package:movies_app/persentation/pages/detail_page.dart';
import 'package:movies_app/persentation/pages/home_page.dart';
import 'package:movies_app/persentation/pages/search_page.dart';
import 'package:movies_app/persentation/pages/splash_screen_page.dart';
import 'package:movies_app/utils/theme_dark.dart';
import 'package:movies_app/utils/theme_light.dart';

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
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<NowPlayingMovieBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<PopularMoviesBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<TopRatedMoviesBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<UpcomingMoviesBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<TrendingTvBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<AiringTodayTvBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<OnTheAirTvBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<PopularTvBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<TopRatedTvBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        darkTheme: darkAppTheme(context),
        theme: lightAppTheme(context),
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
    GoRoute(
      path: '${SearchPage.routeName}/:mode',
      builder: (context, state) {
        final mode = state.pathParameters['mode']!;
        return SearchPage(
          mode: mode,
        );
      },
    ),
    GoRoute(
      path: "${DetailPage.routeName}/:id",
      builder: (context, state) {
        final id = int.tryParse(state.pathParameters['id']!) ?? 0;
        return DetailPage(
          id: id,
        );
      },
    )
  ],
);

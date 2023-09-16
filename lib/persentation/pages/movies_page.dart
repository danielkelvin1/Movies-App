import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/persentation/blocs/movies/now_playing/now_playing_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/popular/popular_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/top_rated/top_rated_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/trending/trending_movie_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/upcoming/upcoming_movies_bloc.dart';
import 'package:movies_app/persentation/widgets/grid_card_widget.dart';
import 'package:movies_app/persentation/widgets/trending_card_widget.dart';

import '../../utils/color.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TrendingMovieBloc>().add(const TrendingMovieEvent.get());
    context.read<NowPlayingMovieBloc>().add(const NowPlayingMovieEvent.get());
    context.read<PopularMoviesBloc>().add(const PopularMoviesEvent.get());
    context.read<TopRatedMoviesBloc>().add(const TopRatedMoviesEvent.get());
    context.read<UpcomingMoviesBloc>().add(const UpcomingMoviesEvent.get());
  }

  Widget _buildGridView(List<Movie> movies) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 1.45,
        mainAxisSpacing: 18,
        crossAxisSpacing: 13,
      ),
      itemBuilder: (context, index) =>
          GridCardWidget(url: movies[index].posterPath ?? ''),
      itemCount: movies.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          BlocBuilder<TrendingMovieBloc, TrendingMovieState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (movies) => SizedBox(
                  height: 210,
                  child: ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) => TrendingCardWidget(
                      url: movies[index].posterPath ??
                          'https://bki.co.id/foto_berita/no_pict.jpg',
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                error: (message) => Text(message),
                loading: () => Center(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                orElse: () => const SizedBox(),
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: colors(context).colorTabBarView!,
                          width: 4,
                        ),
                      ),
                    ),
                    labelColor: colors(context).colorLabelTabBarView,
                    unselectedLabelColor: colors(context).colorLabelTabBarView,
                    unselectedLabelStyle: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w400),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(text: 'Now Playing'),
                      Tab(text: 'Popular'),
                      Tab(text: 'Top Rated'),
                      Tab(text: 'Upcoming'),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return SizedBox(
                          height: constraints.biggest.height,
                          child: TabBarView(children: [
                            BlocBuilder<NowPlayingMovieBloc,
                                NowPlayingMovieState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (movies) => _buildGridView(movies),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (movies) => _buildGridView(movies),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<TopRatedMoviesBloc,
                                TopRatedMoviesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (movies) => _buildGridView(movies),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<UpcomingMoviesBloc,
                                UpcomingMoviesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (movies) => _buildGridView(movies),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                          ]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

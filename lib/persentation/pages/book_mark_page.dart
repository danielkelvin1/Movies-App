// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/domain/entities/movie.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/persentation/blocs/movies/book_mark/book_mark_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/book_mark/book_mark_tv_bloc.dart';
import 'package:movies_app/persentation/pages/detail_movies_page.dart';
import 'package:movies_app/persentation/pages/detail_tv_page.dart';
import 'package:movies_app/persentation/widgets/grid_card_widget.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/constants.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  late final BookMarkMoviesBloc _bookMarkMoviesBloc;
  late final BookMarkTvBloc _bookMarkTvBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookMarkMoviesBloc = KiwiContainer().resolve<BookMarkMoviesBloc>();
    _bookMarkTvBloc = KiwiContainer().resolve<BookMarkTvBloc>();
    _bookMarkMoviesBloc.add(const BookMarkMoviesEvent.get());
    _bookMarkTvBloc.add(const BookMarkTvEvent.get());
  }

  Widget _buildGridViewMovie(List<Movie> movie) {
    return GridView.builder(
      itemCount: movie.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.45,
        mainAxisSpacing: 18,
        crossAxisSpacing: 13,
      ),
      itemBuilder: (context, index) {
        var item = movie[index];
        return GestureDetector(
          onTap: () {
            print(item.id);
            context.push("${DetailMoviesPage.routeName}/${item.id}");
          },
          child: GridCardWidget(
              url: item.posterPath != null
                  ? '$imageUrl/${item.posterPath}'
                  : notFoundImage),
        );
      },
    );
  }

  Widget _buildGridViewTv(List<Tv> tv) {
    return GridView.builder(
      itemCount: tv.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.45,
        mainAxisSpacing: 18,
        crossAxisSpacing: 13,
      ),
      itemBuilder: (context, index) {
        var item = tv[index];
        return GestureDetector(
          onTap: () => context.push("${DetailTvPage.routeName}/${item.id}"),
          child: GridCardWidget(
              url: item.posterPath != null
                  ? '$imageUrl/${item.posterPath}'
                  : notFoundImage),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 4,
                      color: colors(context).colorTabBarView!,
                    ),
                  ),
                ),
                labelColor: colors(context).colorLabelTabBarView,
                unselectedLabelColor: colors(context).colorLabelTabBarView,
                unselectedLabelStyle:
                    Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                labelStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(text: 'Movies'),
                  Tab(text: 'Tv'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BlocBuilder<BookMarkMoviesBloc, BookMarkMoviesState>(
                      bloc: _bookMarkMoviesBloc,
                      builder: (context, state) => state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                        loaded: (movies) => _buildGridViewMovie(movies),
                        error: (message) => Center(
                          child: Text(message),
                        ),
                        orElse: () => const SizedBox(),
                      ),
                    ),
                    BlocBuilder<BookMarkTvBloc, BookMarkTvState>(
                      bloc: _bookMarkTvBloc,
                      builder: (context, state) => state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                        loaded: (tv) => _buildGridViewTv(tv),
                        error: (message) => Center(
                          child: Text(message),
                        ),
                        orElse: () => const SizedBox(),
                      ),
                    )
                    // _buildGridView(),
                    // _buildGridView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

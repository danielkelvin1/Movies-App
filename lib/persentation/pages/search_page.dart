// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/persentation/blocs/tv/search/serach_tv_bloc.dart';
import 'package:movies_app/persentation/widgets/grid_card_widget.dart';
import 'package:movies_app/persentation/widgets/search_widget.dart';
import "package:movies_app/persentation/blocs/movies/search/search_movies_bloc.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key, required this.mode}) : super(key: key);
  static String routeName = "/search";
  final String mode;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final SearchMoviesBloc _blocSearchMovies;
  late final SearchTvBloc _blocSearchTv;
  String _searchText = '';
  int count = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _blocSearchMovies = KiwiContainer().resolve<SearchMoviesBloc>();
    _blocSearchTv = KiwiContainer().resolve<SearchTvBloc>();
  }

  bool paginationMovies(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.maxScrollExtent ==
        scrollNotification.metrics.pixels) {
      _blocSearchMovies.add(SearchMoviesEvent.getNext(_searchText));
    }
    return true;
  }

  bool paginationTv(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.maxScrollExtent ==
        scrollNotification.metrics.pixels) {
      _blocSearchTv.add(SearchTvEvent.getNext(_searchText));
    }
    return true;
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: SearchWidget(
        onSubmited: (value) {
          _searchText = value;

          widget.mode == 'movies'
              ? _blocSearchMovies.add(SearchMoviesEvent.get(value))
              : _blocSearchTv.add(SearchTvEvent.get(value));
        },
      ),
    );
  }

  Widget searchTvBody() {
    return BlocBuilder<SearchTvBloc, SearchTvState>(
      bloc: _blocSearchTv,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
              child: CircularProgressIndicator(
            color: Colors.blue,
          )),
          loaded: (tv, hasNext) {
            if (tv.isEmpty) {
              return const Center(
                child: Text('Not Found Tv'),
              );
            }
            return NotificationListener<ScrollNotification>(
              onNotification: paginationTv,
              child: GridView.builder(
                itemCount: hasNext ? tv.length + 1 : tv.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.45,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  late var item;
                  if (index < tv.length) {
                    item = tv[index];
                  }
                  return index == tv.length && hasNext
                      ? const Center(
                          child: CircularProgressIndicator(color: Colors.blue),
                        )
                      : GridCardWidget(url: item.posterPath);
                },
              ),
            );
          },
          error: (message) => Center(
            child: Text(message),
          ),
        );
      },
    );
  }

  Widget searchMoviesBody() {
    return BlocBuilder<SearchMoviesBloc, SearchMoviesState>(
      bloc: _blocSearchMovies,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
          loaded: (movies, hasNext) {
            if (movies.isEmpty) {
              return const Center(
                child: Text("Not Found Movies"),
              );
            }
            return NotificationListener<ScrollNotification>(
              onNotification: paginationMovies,
              child: GridView.builder(
                  itemCount: hasNext ? movies.length + 1 : movies.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    childAspectRatio: 1 / 1.45,
                  ),
                  itemBuilder: (context, index) {
                    late var item;
                    if (index < movies.length) {
                      item = movies[index];
                    }
                    return index == movies.length && hasNext
                        ? const Center(
                            child:
                                CircularProgressIndicator(color: Colors.blue),
                          )
                        : GridCardWidget(url: item.posterPath);
                  }),
            );
          },
          error: (message) => Center(child: Text(message)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: widget.mode == 'movies' ? searchMoviesBody() : searchTvBody(),
      ),
    );
  }
}

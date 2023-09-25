// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiwi/kiwi.dart';

import 'package:movies_app/persentation/blocs/movies/cast/cast_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/details/details_movies_bloc.dart';
import 'package:movies_app/persentation/blocs/movies/is_book_mark/is_book_mark_bloc.dart';
import 'package:movies_app/persentation/widgets/actor_circle_widget.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/constants.dart';

class DetailMoviesPage extends StatefulWidget {
  const DetailMoviesPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  static String routeName = "/detail-movies";

  @override
  State<DetailMoviesPage> createState() => _DetailMoviesPageState();
}

class _DetailMoviesPageState extends State<DetailMoviesPage> {
  late DetailsMoviesBloc _detailsMoviesBloc;
  late CastMoviesBloc _castMoviesBloc;
  late IsBookMarkMovieBloc _isBookMarkBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _detailsMoviesBloc = KiwiContainer().resolve<DetailsMoviesBloc>();
    _castMoviesBloc = KiwiContainer().resolve<CastMoviesBloc>();
    _isBookMarkBloc = KiwiContainer().resolve<IsBookMarkMovieBloc>();
    _detailsMoviesBloc.add(DetailsMoviesEvent.get(widget.id));
    _castMoviesBloc.add(CastMoviesEvent.get(widget.id));
    _isBookMarkBloc.add(IsBookMarkMovieEvent.get(widget.id));
  }

  Widget bodyTop() {
    return BlocBuilder<DetailsMoviesBloc, DetailsMoviesState>(
      bloc: _detailsMoviesBloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
          loaded: (movie) => Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: movie.backdropPath != null
                        ? '$imageUrlOriginal/${movie.backdropPath}'
                        : notFoundImage,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                right: 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    color: Colors.white.withOpacity(0.1),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_outline_rounded,
                            color: Color(0xffe47c06),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            movie.voteAverage?.toStringAsFixed(1) ?? '',
                            style: const TextStyle()
                                .copyWith(color: const Color(0xffe47c06)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -65,
                left: 30,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 95,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: movie.posterPath != null
                                ? '$imageUrlOriginal/${movie.posterPath}'
                                : notFoundImage,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Flexible(
                        child: Text(
                          movie.originalTitle ?? '',
                          maxLines: 2,
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          error: (message) => const SizedBox(),
        );
      },
    );
  }

  Widget bodyTabBar() {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
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
                Tab(
                  text: 'About Movie',
                ),
                Tab(
                  text: 'Cast',
                ),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                child: TabBarView(
                  children: [
                    BlocBuilder<DetailsMoviesBloc, DetailsMoviesState>(
                      bloc: _detailsMoviesBloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(
                              color: Colors.blue,
                            ),
                          ),
                          error: (message) => Center(
                            child: ListView(
                              children: [Text(message)],
                            ),
                          ),
                          loaded: (movie) => Text(
                            movie.overview ?? '',
                            textAlign: TextAlign.justify,
                          ),
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                    BlocBuilder<CastMoviesBloc, CastMoviesState>(
                      bloc: _castMoviesBloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (cast) => GridView.builder(
                            itemCount: cast.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              crossAxisSpacing: 14,
                              mainAxisSpacing: 14,
                            ),
                            itemBuilder: (context, index) {
                              var item = cast[index];
                              return ActorCircleWidget(
                                imageCircle: item.profilePath != null
                                    ? '$imageUrlOriginal/${item.profilePath}'
                                    : notFoundImage,
                                titleCirlce: item.name ?? '',
                              );
                            },
                          ),
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        actions: [
          BlocBuilder<DetailsMoviesBloc, DetailsMoviesState>(
            bloc: _detailsMoviesBloc,
            builder: (context, state) => state.maybeWhen(
              loaded: (movie) =>
                  BlocBuilder<IsBookMarkMovieBloc, IsBookMarkMovieState>(
                bloc: _isBookMarkBloc,
                builder: (context, state) => state.maybeWhen(
                  loaded: (isBookMark) => GestureDetector(
                    onTap: () => _isBookMarkBloc.add(
                      IsBookMarkMovieEvent.change(widget.id, movie),
                    ),
                    child: Icon(
                      isBookMark ? Icons.bookmark : Icons.bookmark_border,
                      size: 30,
                    ),
                  ),
                  orElse: () => const SizedBox(),
                ),
              ),
              orElse: () => const SizedBox(),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
        leading: InkWell(
          onTap: () => context.pop(),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          bodyTop(),
          const SizedBox(
            height: 84.0,
          ),
          BlocBuilder<DetailsMoviesBloc, DetailsMoviesState>(
            bloc: _detailsMoviesBloc,
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (movie) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(movie.releaseDate?.split('-')[0] ?? ''),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text('|'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Icon(
                        Icons.access_time_outlined,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text('${movie.runtime} Minutes'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Text('|'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Icon(
                        Icons.movie_creation_outlined,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(movie.genres?.firstOrNull?.name ?? 'No Data'),
                    ],
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
          const SizedBox(
            height: 24.0,
          ),
          bodyTabBar()
        ],
      ),
    );
  }
}

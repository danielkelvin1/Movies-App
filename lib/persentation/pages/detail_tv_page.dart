// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiwi/kiwi.dart';
import 'package:movies_app/persentation/blocs/tv/cast/cast_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/details/details_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/is_book_mark/is_book_mark_tv_bloc.dart';
import 'package:movies_app/persentation/widgets/actor_circle_widget.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/constants.dart';

class DetailTvPage extends StatefulWidget {
  const DetailTvPage({Key? key, required this.id}) : super(key: key);
  static String routeName = '/detail-tv';
  final int id;

  @override
  State<DetailTvPage> createState() => _DetailTvPageState();
}

class _DetailTvPageState extends State<DetailTvPage> {
  late DetailsTvBloc _detailsTvBloc;
  late CastTvBloc _castTvBloc;
  late IsBookMarkTvBloc _isBookMarkTvBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _detailsTvBloc = KiwiContainer().resolve<DetailsTvBloc>();
    _castTvBloc = KiwiContainer().resolve<CastTvBloc>();
    _isBookMarkTvBloc = KiwiContainer().resolve<IsBookMarkTvBloc>();
    _detailsTvBloc.add(DetailsTvEvent.get(widget.id));
    _castTvBloc.add(CastTvEvent.get(widget.id));
    _isBookMarkTvBloc.add(IsBookMarkTvEvent.get(widget.id));
  }

  Widget bodyTop() {
    return BlocBuilder<DetailsTvBloc, DetailsTvState>(
      bloc: _detailsTvBloc,
      builder: (context, state) => state.maybeWhen(
        loading: () => const Center(
          child: CircularProgressIndicator(color: Colors.blue),
        ),
        loaded: (tv) => Stack(
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
                  imageUrl: tv.backdropPath != null
                      ? '$imageUrlOriginal/${tv.backdropPath}'
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
                          tv.voteAverage?.toStringAsFixed(1) ?? '',
                          style: const TextStyle().copyWith(
                            color: const Color(0xffe47c06),
                          ),
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
                          imageUrl: tv.posterPath != null
                              ? "$imageUrlOriginal/${tv.posterPath}"
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
                        tv.originalName ?? '',
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
        error: (message) => Center(
          child: Text(message),
        ),
        orElse: () => const SizedBox(),
      ),
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
                  text: 'About Tv',
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
                    BlocBuilder<DetailsTvBloc, DetailsTvState>(
                      bloc: _detailsTvBloc,
                      builder: (context, state) => state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                        loaded: (tv) => ListView(
                          children: [
                            Text(
                              tv.overview ?? '',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                        error: (message) => Center(
                          child: Text(message),
                        ),
                        orElse: () => const SizedBox(),
                      ),
                    ),
                    BlocBuilder<CastTvBloc, CastTvState>(
                      bloc: _castTvBloc,
                      builder: (context, state) => state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(color: Colors.blue),
                        ),
                        loaded: (castTvList) => GridView.builder(
                          itemCount: castTvList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            crossAxisSpacing: 14,
                            mainAxisSpacing: 14,
                          ),
                          itemBuilder: (context, index) {
                            var item = castTvList[index];
                            return ActorCircleWidget(
                              imageCircle: item.profilePath != null
                                  ? "$imageUrlOriginal/${item.profilePath}"
                                  : notFoundImage,
                              titleCirlce: item.name ?? '',
                            );
                          },
                        ),
                        orElse: () => const SizedBox(),
                      ),
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
        backgroundColor: Colors.transparent,
        actions: [
          BlocBuilder<DetailsTvBloc, DetailsTvState>(
            bloc: _detailsTvBloc,
            builder: (context, state) => state.maybeWhen(
              loaded: (tv) => BlocBuilder<IsBookMarkTvBloc, IsBookMarkTvState>(
                bloc: _isBookMarkTvBloc,
                builder: (context, state) => state.maybeWhen(
                  loaded: (isBookMark) => GestureDetector(
                    onTap: () => _isBookMarkTvBloc.add(
                      IsBookMarkTvEvent.change(widget.id, tv),
                    ),
                    child: Icon(
                      isBookMark ? Icons.bookmark : Icons.bookmark_border,
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
      ),
      body: Column(
        children: [
          bodyTop(),
          const SizedBox(
            height: 84.0,
          ),
          BlocBuilder<DetailsTvBloc, DetailsTvState>(
            bloc: _detailsTvBloc,
            builder: (context, state) => state.maybeWhen(
              loaded: (tv) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(tv.firstAirDate?.split('-')[0] ?? ''),
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
                  Text(
                      "${tv.episodeRunTime?.firstOrNull ?? 'No Data'} Minutes"),
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
                  Text(tv.genres?.firstOrNull?.name ?? 'No Data'),
                ],
              ),
              orElse: () => const SizedBox(),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          bodyTabBar(),
        ],
      ),
    );
  }
}

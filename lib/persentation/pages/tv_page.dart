import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/domain/entities/tv.dart';
import 'package:movies_app/persentation/blocs/tv/airing_today/airing_today_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/on_the-air/on_the_air_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/popular/popular_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/top_rated/top_rated_tv_bloc.dart';
import 'package:movies_app/persentation/blocs/tv/trending/trending_tv_bloc.dart';
import 'package:movies_app/persentation/pages/detail_tv_page.dart';
import 'package:movies_app/persentation/widgets/grid_card_widget.dart';
import 'package:movies_app/persentation/widgets/trending_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/constants.dart';

class TVPage extends StatefulWidget {
  const TVPage({super.key});

  @override
  State<TVPage> createState() => _TVPageState();
}

class _TVPageState extends State<TVPage> {
  @override
  void initState() {
    super.initState();
    context.read<TrendingTvBloc>().add(const TrendingTvEvent.get());
    context.read<AiringTodayTvBloc>().add(const AiringTodayTvEvent.get());
    context.read<OnTheAirTvBloc>().add(const OnTheAirTvEvent.get());
    context.read<PopularTvBloc>().add(const PopularTvEvent.get());
    context.read<TopRatedTvBloc>().add(const TopRatedTvEvent.get());
  }

  Widget _buildGridView(List<Tv> tv) {
    return GridView.builder(
        itemCount: tv.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 100 / 145,
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 210,
            child: BlocBuilder<TrendingTvBloc, TrendingTvState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (tv) => ListView.builder(
                    itemCount: tv.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => context
                          .push("${DetailTvPage.routeName}/${tv[index].id}"),
                      child: TrendingCardWidget(url: tv[index].posterPath!),
                    ),
                  ),
                  loading: () => Center(
                      child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  )),
                  orElse: () => const SizedBox(),
                );
              },
            ),
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
                    unselectedLabelStyle:
                        Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                    labelStyle:
                        Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                    tabs: const [
                      Tab(text: 'Airing Today'),
                      Tab(text: 'On The Air'),
                      Tab(text: 'Popular'),
                      Tab(text: 'Top Rated'),
                    ],
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          height: constraints.biggest.height,
                          margin: const EdgeInsets.only(top: 20),
                          child: TabBarView(children: [
                            BlocBuilder<AiringTodayTvBloc, AiringTodayTvState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (tv) => _buildGridView(tv),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.blue)),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<OnTheAirTvBloc, OnTheAirTvState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (tv) => _buildGridView(tv),
                                  loading: () => const Center(
                                    child: CircularProgressIndicator(
                                        color: Colors.blue),
                                  ),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<PopularTvBloc, PopularTvState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (tv) => _buildGridView(tv),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.blue)),
                                  error: (message) => Text(message),
                                  orElse: () => const SizedBox(),
                                );
                              },
                            ),
                            BlocBuilder<TopRatedTvBloc, TopRatedTvState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (tv) => _buildGridView(tv),
                                  loading: () => const Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.blue)),
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

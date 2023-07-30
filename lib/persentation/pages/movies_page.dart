import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/persentation/blocs/bloc/trending_movie_bloc.dart';
import 'package:movies_app/persentation/widgets/trending_card_widget.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            const DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'Beranda'),
                      Tab(icon: Icon(Icons.settings), text: 'Pengaturan'),
                    ],
                  ),
                  TabBarView(children: [
                    // Konten untuk tab pertama (Beranda)
                    Center(child: Text('Halaman Beranda')),
                    // Konten untuk tab kedua (Pengaturan)
                    Center(child: Text('Halaman Pengaturan')),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/persentation/blocs/movies/trending/trending_movie_bloc.dart';
import 'package:movies_app/persentation/pages/movies_page.dart';
import 'package:movies_app/persentation/widgets/search_widget.dart';
import 'package:movies_app/persentation/widgets/trending_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  PreferredSize _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What do you want to watch?',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  child: SearchWidget(
                    enabled: false,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> _buildBody() {
    return [
      const MoviesPage(),
      SizedBox(),
    ];
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      backgroundColor: Theme.of(context).colorScheme.background,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_outlined),
          label: 'Movies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tv_outlined),
          label: 'TV',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody()[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/persentation/pages/movies_page.dart';
import 'package:movies_app/persentation/pages/search_page.dart';
import 'package:movies_app/persentation/pages/tv_page.dart';
import 'package:movies_app/persentation/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String searchMode = 'movies';

  PreferredSize _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12.0,
                ),
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
                  child: const SearchWidget(
                    enabled: false,
                  ),
                  onTap: () {
                    context.push("${SearchPage.routeName}/$searchMode");
                  },
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> _buildBody() {
    return [
      const MoviesPage(),
      const TVPage(),
    ];
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
          if (_selectedIndex == 0) {
            searchMode = 'movies';
          } else {
            searchMode = 'tv';
          }
        });
      },
      backgroundColor: Theme.of(context).colorScheme.background,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
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

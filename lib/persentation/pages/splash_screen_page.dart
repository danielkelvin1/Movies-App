import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/persentation/pages/home_page.dart';

class SplashScreenpage extends StatefulWidget {
  const SplashScreenpage({super.key});
  static String routeName = '/';

  @override
  State<SplashScreenpage> createState() => _SplashScreenpageState();
}

class _SplashScreenpageState extends State<SplashScreenpage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.go(HomePage.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset('assets/popcorn 1.png'),
        ),
      ),
    );
  }
}

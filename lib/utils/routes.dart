import 'package:flutter/cupertino.dart';
import 'package:wave/screens/intro_pages/pages/secondIntroPage.dart';
import 'package:wave/screens/intro_pages/pages/thirdIntroPage.dart';
import 'package:wave/screens/splay_screen/pages/splay_screen.dart';
import '../screens/home_page/pages/home_page.dart';
import '../screens/intro_pages/pages/intro_screens.dart';
import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => const HomePage(),
  AppRoutes().splayPage: (context) => const SplashScreen(),
  AppRoutes().introScreenOne: (context) => const IntroScreenOne(),
  AppRoutes().introScreenSecond: (context) => const IntroScreenSecond(),
  AppRoutes().introScreenLast: (context) => const IntroScreenLast(),
};

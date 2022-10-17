import 'package:flutter/material.dart';
import 'package:wave/utils/appRoutes.dart';
import 'package:wave/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wave Massager",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.white),
        primaryColorDark: Color(0xff282523),
      ),
      // home: FirstPage(),
      initialRoute: AppRoutes().splayPage,
      routes: routes,
    );
  }
}

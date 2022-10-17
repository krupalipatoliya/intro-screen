import 'package:flutter/material.dart';
import 'package:wave/utils/appRoutes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> navigateToHomeScreen() async {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
          AppRoutes().introScreenOne, (route) => false),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assest/image17.png"),
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

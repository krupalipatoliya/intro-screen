import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wave/utils/appRoutes.dart';
import 'package:wave/utils/colors.dart';

class IntroScreenOne extends StatefulWidget {
  const IntroScreenOne({Key? key}) : super(key: key);

  @override
  State<IntroScreenOne> createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: Text(
                    "Skip",
                    style: TextStyle(color: orange, fontSize: 17),
                  ),
                  onPressed: () {

                    Navigator.of(context).pushNamed(AppRoutes().homePage);
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Free Voice & Video Calls",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Talk with your friends whenever you wants \n no limits!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: SizedBox(
                    width: 180,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(color: lightOrange),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 140,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: oasis, shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 160,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: oasis, shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .popAndPushNamed(AppRoutes().introScreenSecond);
              },
              child: Container(
                height: 60,
                width: 350,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: orange,
                ),
                child: const Text(
                  "NEXT",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

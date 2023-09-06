import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whiz_vent/pages/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Lottie.network(
              "https://lottie.host/ec36526e-d72e-434e-90fd-3114ef1bd96a/jJvY7mjQxm.json",
            ),
          ),
          const Text(
            "Find & create events in on place!",
            style: TextStyle(color: Color.fromARGB(255, 69, 87, 103)),
          ),
        ],
      ),
      nextScreen: const HomePage(),
      backgroundColor: const Color(0xFFf7f7f7),
      duration: 3000,
      splashIconSize: 250,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}

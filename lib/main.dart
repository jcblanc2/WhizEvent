import 'package:flutter/material.dart';
import 'package:whiz_vent/pages/home_page.dart';
import 'package:whiz_vent/pages/splash_screen.dart';
import 'utils/constants.dart';

void main() {
  runApp(const WhizEvent());
}

class WhizEvent extends StatelessWidget {
  const WhizEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: Constants.initialRoute,
      routes: {
        Constants.initialRoute: (context) => const SplashScreen(),
        Constants.home: (context) => const HomePage()
      },
    );
  }
}

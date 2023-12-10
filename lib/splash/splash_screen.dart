import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/after_splash.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        height: 600,
        width: 400,
        child: Center(
          child: Image.asset(
            "assets/images/img.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.rotationTransition,
      nextScreen: const AfterSplash(),
    );
  }
}


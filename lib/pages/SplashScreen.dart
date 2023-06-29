import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/pages/HomePage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String id = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 200,
        backgroundColor: colorPrimary,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.sizeTransition,
        splash: Image.asset('assets/images/home/logo_app.png'),
        nextScreen: const HomePage());
  }
}

// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '/Cons/themes.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../Screens/Welcome.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Icon(
            Icons.desk_outlined,
            color: theme().primaryColorDark,
            size: 300,
          ),
          LoadingAnimationWidget.staggeredDotsWave(
            color: theme().primaryColorDark,
            size: 40,
          )
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const WelcomeScreen(),
      splashIconSize: 550,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
    );
  }
}

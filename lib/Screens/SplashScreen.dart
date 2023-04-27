// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/Cons/names.dart';
import 'package:projects/Screens/HomeScreen.dart';
import '/Cons/themes.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../Screens/GetStartedScreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // User? user;
  // @override
  // void initState() {
  //   super.initState();
  //   user = FirebaseAuth.instance.currentUser;
  //   updateTables();
  // }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: ListView(
        children: [
          SizedBox(height: 300),
          Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_a2JTJdKRJ5.json')
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: StartScreen(),
      // user != null ? const HomeScreen() :
      splashIconSize: 550,
      splashTransition: SplashTransition.fadeTransition,
      duration: 4000,
    );
  }
}

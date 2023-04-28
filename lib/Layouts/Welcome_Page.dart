import 'package:flutter/material.dart';
import '/Screens/Welcome.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const WelcomeScreen(), 
      settings: const RouteSettings(name: routeName));
  }
  const WelcomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


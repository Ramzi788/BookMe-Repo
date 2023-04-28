import 'package:flutter/material.dart';
import '/Screens/SplashScreen.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(), 
      settings: const RouteSettings(name: routeName));
  }
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children:   const [
          Flexible(
            fit: FlexFit.loose,
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: SplashScreen()),
          )
        ],
      ))
      
      
    );
  }
}




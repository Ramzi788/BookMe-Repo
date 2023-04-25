import 'package:flutter/material.dart';
import '/Screens/Welcome.dart';
import '/Screens/AboutUsScreen.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = '/about';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const AboutPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const AboutPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const AboutScreen();
  }
}


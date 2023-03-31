import 'package:flutter/material.dart';
import '/Screens/HomeScreen.dart';
class HomePage extends StatelessWidget {
  static const String routeName = '/homepage';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(), 
      settings: const RouteSettings(name: routeName));
  }
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}



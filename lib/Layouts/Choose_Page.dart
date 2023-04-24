import 'package:flutter/material.dart';
import '/Screens/Welcome.dart';
import '/Screens/ChooseScreen.dart';

class ChoosePage extends StatelessWidget {
  static const String routeName = '/choose';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ChoosePage(), 
      settings: const RouteSettings(name: routeName));
  }
  const ChoosePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const ChooseScreen();
  }
}


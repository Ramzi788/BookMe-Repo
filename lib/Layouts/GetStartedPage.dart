import 'package:flutter/material.dart';
import '../Screens/GetStartedScreen.dart';

class GetStartedPage extends StatelessWidget {
  static const String routeName = '/start';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const GetStartedPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const GetStartedPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: StartScreen(),
        
        );
    
  }
}

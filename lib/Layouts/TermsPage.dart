import 'package:flutter/material.dart';
import '../Screens/TermsScreen.dart';
import '/Screens/SplashScreen.dart';

class TermsPage extends StatelessWidget {
  static const String routeName = '/t';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const TermsScreen(), 
      settings: const RouteSettings(name: routeName));
  }
  const TermsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children:   [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 500,
              width: double.infinity,
              child: TermsScreen()),
          )
        ],
      ))
      
      
    );
  }
}




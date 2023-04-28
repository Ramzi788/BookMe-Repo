import 'package:flutter/material.dart';
import '../Screens/TermsScreen.dart';

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
        children:   const [
          Flexible(
            fit: FlexFit.loose,
            child: SizedBox(
              height: 500,
              width: double.infinity,
              child: TermsScreen()),
          )
        ],
      ))
      
      
    );
  }
}




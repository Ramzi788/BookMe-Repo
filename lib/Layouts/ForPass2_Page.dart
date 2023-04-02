import 'package:flutter/material.dart';
import '../Screens/ForPass2.dart';
class ForPass2Page extends StatelessWidget {
  static const String routeName = '/forgotpassnum2';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ForPass2Page(), 
      settings: const RouteSettings(name: routeName));
  }
  const ForPass2Page({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ForgPass2Screen(),
        
        );
    
  }
}

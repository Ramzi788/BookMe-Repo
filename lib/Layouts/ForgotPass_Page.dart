import 'package:flutter/material.dart';
import '/Screens/ForgPassScreen.dart';
import '../Layouts/Register_Page.dart';
class ForgotPassPage extends StatelessWidget {
  static const String routeName = '/forgotpass';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ForgotPassPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const ForgotPassPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: ForgPassScreen(),
    );
          
  }
}

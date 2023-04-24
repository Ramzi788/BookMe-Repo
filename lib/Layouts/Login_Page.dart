import 'package:flutter/material.dart';
import '../Layouts/Register_Page.dart';
import '/Screens/LoginScreen.dart';
class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const LoginPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const LoginPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: const <Widget>[
            Expanded(
              flex: 1,
              child: LoginScreen(),
              ),
            
            
          ],
        ),
      );
  }
}

import 'package:flutter/material.dart';
import '/Screens/Register.dart';


class RegisterPage extends StatelessWidget {
  static const String routeName = '/register';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const RegisterPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        body: Row(
          children: const <Widget>[
           Expanded(
              flex: 1,
              child: RegScreen(),
              ),
            
             
            
          ],
        ),
        
      );
  }
}

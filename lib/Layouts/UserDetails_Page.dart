import 'package:flutter/material.dart';
import '../Screens/UserScreen.dart';
class UserPage extends StatelessWidget {
  static const String routeName = '/user';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const UserPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const UserPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: const <Widget>[
            Expanded(
              flex: 1,
              child: UserScreen(),
              ),
            
            
          ],
        ),
      );
  }
}

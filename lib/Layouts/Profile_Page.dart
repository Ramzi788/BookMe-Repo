import 'package:flutter/material.dart';
import '../Screens/ProfileScreen.dart';
class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ProfilePage(), 
      settings: const RouteSettings(name: routeName));
  }
  const ProfilePage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ProfileScreen(),
      );
  }
}

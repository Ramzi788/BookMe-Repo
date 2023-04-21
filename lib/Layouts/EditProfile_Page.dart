import 'package:flutter/material.dart';
import '../Screens/EditProfileScreen.dart';
class EditProfilePage extends StatelessWidget {
  static const String routeName = '/edit';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const EditProfilePage(), 
      settings: const RouteSettings(name: routeName));
  }
  const EditProfilePage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: EditProfileScreen(),
    );
          
  }
}

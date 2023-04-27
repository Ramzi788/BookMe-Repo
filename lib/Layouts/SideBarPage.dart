import 'package:flutter/material.dart';
import '../Screens/SideBarScreen.dart';


class SideBarPage extends StatelessWidget {
  static const String routeName = '/sidebar';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const SideBarPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const SideBarPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SideBarScreen(),
      );
  }
}

import 'package:flutter/material.dart';

import '../Screens/NotificationScreen.dart';


class NotiPage extends StatelessWidget {
  static const String routeName = '/notifications';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const NotiPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const NotiPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotiScreen(),
      );
  }
}

import 'package:flutter/material.dart';

import '../Screens/NotificationsScreen.dart';


class NotiPage extends StatelessWidget {
  static const String routeName = '/messages';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const NotiPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const NotiPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationsScreen(),
      );
  }
}

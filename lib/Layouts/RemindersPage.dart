import 'package:flutter/material.dart';
import '/Screens/ReminderScreen.dart';

class RemindersPage extends StatelessWidget {
  static const String routeName = '/reminders';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ReminderScreen(), 
      settings: const RouteSettings(name: routeName));
  }
  const RemindersPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const ReminderScreen();
  }
}


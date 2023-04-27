import 'package:flutter/material.dart';
import '../Screens/ToDoListScreen.dart';

class ToDoListPage extends StatelessWidget {
  static const String routeName = '/todo';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => const ToDoListPage(), 
      settings: const RouteSettings(name: routeName));
  }
  const ToDoListPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ToDoScreen(),
        
        );
    
  }
}

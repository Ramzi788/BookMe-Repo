// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selected = index;
      });
}
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: theme().primaryColor ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme().primaryColor,
      ),
      drawer: const SideBarScreen(), 
      
      bottomNavigationBar:  Theme(
        data: Theme.of(context).copyWith(
          canvasColor: theme().primaryColor,
          textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.yellow))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items:  [
              BottomNavigationBarItem(
                icon: IconButton(icon: Icon(Icons.person), onPressed: (){Navigator.pushNamed(context, '/profile');},),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: IconButton(icon: Icon(Icons.notifications_outlined), onPressed: (){Navigator.pushNamed(context, '/notifications');},),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.home_outlined), onPressed: (){Navigator.pushNamed(context, '/homepage');},),
              label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.settings), onPressed: (){Navigator.pushNamed(context, '/homepage');},),
              label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: IconButton(icon: Icon(Icons.more_horiz_outlined), onPressed: (){Navigator.pushNamed(context, '/profile');},),
                label: 'More',
              ),
          ],
          currentIndex: _selected,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.white,
          selectedItemColor: theme().primaryColorDark
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon: Icon(Icons.notifications_outlined), onPressed: (){Navigator.pushNamed(context, '/profile');},)
          
        ])
        ],
      ),
      
      );
      
    
  }
}

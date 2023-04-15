// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Register.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';
import '../components/BottomNavBar.dart';
import '../Screens/Seats.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: theme().primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme().primaryColor,
      ),
      drawer: const SideBarScreen(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: theme().primaryColor,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Bottomnav(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: 400,
                height: 600,
                color: theme().primaryColorDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

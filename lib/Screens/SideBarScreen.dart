import 'package:flutter/material.dart';
import '/Cons/themes.dart';
import '../components/ProfileView.dart';
import '../components/MenuList.dart';

class SideBarScreen extends StatefulWidget {
  const SideBarScreen({super.key});

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: theme().primaryColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [profileView(context), menuList(context)],
          ),
        ));
  }
}

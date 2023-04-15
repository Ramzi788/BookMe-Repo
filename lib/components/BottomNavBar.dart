import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projects/Cons/names.dart';


class Bottomnav extends StatelessWidget {
  Bottomnav({super.key,});

  @override
  Widget build(BuildContext context) {
    return GNav(
                color: Colors.white,
                activeColor: Colors.white,
                padding: const EdgeInsets.all(15),
                tabs:  [
                  GButton(
                    icon: Icons.home_outlined, 
                    onPressed: (){
                    },
                    ),
                  GButton(
                    icon: Icons.person, 
                    onPressed: (){
                      Navigator.pushNamed(context, '/profile');
                    },
                    ),
                  GButton(
                    icon: Icons.notifications_outlined, 
                    onPressed: (){
                      Navigator.pushNamed(context, '/notifications');
                    } ,
                    ),
                  GButton(
                    icon: Icons.settings_outlined, 
                    onPressed: (){
                      Navigator.pushNamed(context, '/settings');
                    },
                    ),
                ],
    );
  }
}
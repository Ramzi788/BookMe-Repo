import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Bottomnav extends StatelessWidget {
  Bottomnav({super.key,});

  @override
  Widget build(BuildContext context) {
    return GNav(
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: theme().primaryColorDark,
                gap: 10,
                backgroundColor: theme().primaryColor,
                padding: const EdgeInsets.all(15),
                tabs:  [
                  GButton(
                    icon: Icons.home_outlined, 
                    text: "Home",
                    onPressed: (){
                      Navigator.pushNamed(context, '/homepage');
                    },
                    ),
                  GButton(
                    icon: Icons.person, 
                    text: "Profile",
                    onPressed: (){
                      Navigator.pushNamed(context, '/profile');
                    },
                    ),
                  GButton(
                    icon: Icons.notifications_outlined, 
                    text: "Notifications",
                    ),
                  GButton(
                    icon: Icons.settings_outlined, 
                    text: "Settings",
                    ),
                ],
    );
  }
}
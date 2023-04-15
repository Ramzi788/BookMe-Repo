// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_theme_provider/flutter_theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsState();
  
}

bool _iconBool = false;


class _SettingsState extends State<SettingsScreen> {
  bool valueNotify3 = false;
  




  onChangedFunction3(bool newValue3) {
    setState(() {
      valueNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: theme().primaryColor, leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: Colors.white,
                    onPressed: (){Navigator.pop(context);},
                    iconSize: 30,
                  ),title: Text("Settings",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white)),
                    toolbarHeight: 50,
                ),
      body: Container(
        color: theme().primaryColor,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 1),
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: theme().primaryColorDark,
                    ),
                    const SizedBox(width: 10),
                    Text("Account",
                        style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white, fontWeight: FontWeight.bold)
                        )
                  ],
                ),
                Divider(height: 20, thickness: 1, color: Colors.grey.shade100),
                const SizedBox(height: 10),
                buildAccontOption(context, "Change Password"),
                const SizedBox(height: 10),
                buildAccontOption(context, "About"),
                const SizedBox(height: 10),
                buildAccontOption(context, "Help and Support"),
                const SizedBox(height: 10),
                buildAccontOption(context, "Privacy and Security"),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Icon(Icons.volume_up_outlined,
                        color: theme().primaryColorDark),
                    const SizedBox(width: 10),
                    const Text("Notifications",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ))
                  ],
                ),
                 Divider(height: 20, thickness: 1, color: Colors.grey.shade100 ),
                const SizedBox(height: 10),
                
                buildNotificationOption(
                    "Notifications", valueNotify3, onChangedFunction3),
                const SizedBox(height: 50),
                Center(
                  child: OutlinedButton(
                    
                    style: OutlinedButton.styleFrom(
                        backgroundColor: theme().primaryColorDark,
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                            )),
                    onPressed: () {
                      FirebaseAuth.instance
                      .signOut()
                      .then((value) => Navigator.pushNamed(context, '/'));
                    },
                    child: const Text("Log out",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.2,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                activeColor: theme().primaryColorDark,
                trackColor: Colors.grey,
                value: value,
                onChanged: (bool newValue) {
                  onChangeMethod(newValue);
                },
              ),
            )
          ],
        ));
  }

  GestureDetector buildAccontOption(BuildContext, String title) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey)
              ],
            )));
  }
}

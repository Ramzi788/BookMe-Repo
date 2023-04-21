// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:firebase_auth/firebase_auth.dart';


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
                
                Padding(
                  padding: const EdgeInsets.only(left: 20, right:10),
                  child: Row(
                    children: [
                      Text("Change Password", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey.shade500, fontSize: 20),), 
                      const SizedBox(width: 140,),
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context, '/forgotpassnum2');
                      }, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,)
                    ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right:10),
                  child: Row(
                    children: [
                      Text("Edit Profile", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey.shade500, fontSize: 20),), 
                      const SizedBox(width: 205,),
                      IconButton(onPressed: (){Navigator.pushNamed(context, '/edit');}, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,)
                    ]
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right:10),
                //   child: Row(
                //     children: [
                //       Text("Help and Support", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey.shade500, fontSize: 20),), 
                //       const SizedBox(width: 146,),
                //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,)
                //     ]
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right:10),
                //   child: Row(
                //     children: [
                //       Text("Privacy and Security", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey.shade500, fontSize: 20),), 
                //       const SizedBox(width: 120,),
                //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios), color: Colors.white,)
                //     ]
                //   ),
                // ),
                const SizedBox(height: 10,),
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

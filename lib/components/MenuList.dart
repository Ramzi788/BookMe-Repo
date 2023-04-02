import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
Widget menuList (BuildContext context) => Container(
  padding: const EdgeInsets.all(20),
  child: Column(
          children: [
                  ListTile(
                  leading: const Icon(Icons.home_outlined, color: Colors.black),
                  title: const Text("Home", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.map_outlined, color: Colors.black),
                  title: const Text("Map", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                ListTile(
                  leading: const Icon(Icons.notification_add_outlined, color: Colors.black),
                  title: const Text("Notifications", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline_rounded, color: Colors.black),
                  title: const Text("About us", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline_rounded, color: Colors.black),
                  title: const Text("Help", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                const Divider(color: Colors.black),
                ListTile(
                  leading: const Icon(Icons.link, color: Colors.black),
                  title: const Text("Links", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.black),
                  title: const Text("Settings", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){},
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app, color: Colors.black),
                  title: const Text("Log out", style: TextStyle(color: Colors.black, fontSize: 15)),
                  onTap: (){
                    FirebaseAuth.instance.signOut().then((value) => Navigator.pushNamed(context, '/'));
                  },
                ),
                    
                  
                 
  
                   
                  
  
                    
                ],
              ),
);
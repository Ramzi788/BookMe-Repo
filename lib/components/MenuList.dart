// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:url_launcher/url_launcher.dart';



Widget menuList(BuildContext context) => Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.white),
            title: const Text("Home",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.notifications_outlined,
                color: Colors.white),
            title: const Text("Notifications",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.info_outline_rounded, color: Colors.white),
            title: const Text("About us",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.help_outline_rounded, color: Colors.white),
            title: const Text("Help",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ExpansionTile(
            childrenPadding: const EdgeInsets.only(left:5),
            collapsedIconColor: Colors.white,
            iconColor: Colors.white,
            leading: const Icon(Icons.link, color: Colors.white),
            title: const Text("Links",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            children: [
                  ListTile(
                leading: 
                    CircleAvatar(child: Image.asset('assets/images/moodle.png', height: 40), radius: 20, backgroundColor:theme().primaryColor),
                title: const Text("Moodle",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: ()async {
                  final Url = 'https://twitter.com';
                  if (await canLaunch(Url)){
                    await launch(
                      Url, 
                      forceSafariVC: false,
                      
                    );
                  }
                }, 
              ),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/AUBSIS.png', height: 40), radius: 20, backgroundColor:theme().primaryColor),
                title: const Text("AUB SIS",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){

                }
                  
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text("Settings",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {Navigator.pushNamed(context, '/settings');},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.white),
            title: const Text("Log out",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            onTap: () {
              FirebaseAuth.instance
                  .signOut()
                  .then((value) => Navigator.pushNamed(context, '/'));
            },
          ),
        ] 
      ),
    );

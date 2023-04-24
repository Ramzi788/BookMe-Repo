// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:url_launcher/url_launcher.dart';


_launchURL() async {
  const url = 'https://adfs.aub.edu.lb/adfs/ls/?SAMLRequest=jZLbTgIxEIZfZdP7PVBFtAESlBhJUAmgF96Y2XZWmnTbtdN6eHuXRSOYaLxrZ%2Bab%2BedvhwS1acQkho1d4nNECslbbSyJLjFi0VvhgDQJCzWSCFKsJtdzwbNCNN4FJ51he8jfBBChD9pZlsymI%2FYoj%2BBY9gZQDORJidAv%2B4MzkLIHiBVXCrGASgFXpxVL7tFTS45Y26jFiSLOLAWwoQ0V%2FCgtjlPO18VA8DPR5w8smbbbaAuhozYhNCTyHFRFGcQyQxUzU3b33FDOksmXuAtnKdboV%2BhftMS75fwbN%2FUh3RqXb%2FfmOTW7QwqSsmbT%2FChlyeLTrnNtlbZPfztV7opIXK3Xi3Rxu1qz8XDbX3Sb%2B%2FG%2FBNUYQEGArZ5hvo8Pdw9%2F0w6eTRfOaPmeXDpfQ%2FhdVy%2FrdRGt0qorFdFSg1JXGlXrnzHu9cIjBByx4COyfLwbevjBxh8%3D&RelayState=https%3A%2F%2Flms.aub.edu.lb%2F&SigAlg=http%3A%2F%2Fwww.w3.org%2F2001%2F04%2Fxmldsig-more%23rsa-sha256&Signature=C7E7fmHVJUNlF096TCjwtIKZCfZkKf64NdtvnRFvN3XsZPV5vdqz%2F3owDaX7JGsZojuJghACydnoLfENDEHGQr3A9QJ1e0d4%2BnPFdQlw7stEtqtVdqa83tpe1jA%2BMgG5zWYESUpq8qJPqY8EPtwpOxAgRedukXU5ZcLRaX2eFVSll9S0CCMTfuX2H6mc%2BI4wmWSgMNJLOErRkJ%2F7JsaKVRMT1AFjwSNB71Kxp7aUgY5aOpEPWC9y2OiNQ1CnH%2FVbuG9SYoxFhB4CtFtSRgoHEuawyDSSoooXRh1P50N%2BevyayHsfNooKWPCZo13H5Dmh%2Fkv%2BTM4JLq1ljDWplLvgxw%3D%3D';
  if (await launch(url)) {
    await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://www.aub.edu.lb/Pages/AUBSIS.aspx';
  if (await launch(url)) {
    await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
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
                onTap: () {
                  _launchURL();
            }),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/AUBSIS.png', height: 40), radius: 20, backgroundColor:theme().primaryColor),
                title: const Text("AUB SIS",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){
                  _launchURL2();
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
            onTap: () async {
              await auth.signOut().then((value) => Navigator.pushNamed(context, '/start'));
            },
          ),
        ] 
      ),
    );
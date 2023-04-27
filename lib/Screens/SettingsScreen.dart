// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:url_launcher/url_launcher.dart';


_launchInstaURL() async {
  const url = 'https://www.tiktok.com/@bookmeaub';
  if (await launch(url)) {
    await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchTiktokURL() async {
  const url = 'https://www.tiktok.com/@bookmeaub';
  if (await launch(url)) {
    await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchTwitterUrl() async {
  const url = 'https://twitter.com/BookMeAUB';
  if (await launch(url)) {
    await canLaunch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
                
                    
                Padding(
                  padding: const EdgeInsets.only(left: 15, right:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Account",
                          style: Theme.of(context).textTheme.headline4?.copyWith(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                          ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                ListTile(
                  onTap: (){Navigator.pushNamed(context, '/forgotpassnum2');},
                  leading: Text("Change Password", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, fontSize: 18),),
                  trailing:  Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ), 
                ListTile(
                  onTap: (){Navigator.pushNamed(context, '/edit');},
                  leading: Text("Edit Profile", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, fontSize: 18),),
                  trailing:  Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ), 
                
                Padding(
                  padding: const EdgeInsets.only(left: 10, right:10, bottom: 10),
                  child: Divider(height: 20, thickness: 1, color: Color.fromARGB(255, 80, 78, 78)),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 15, right:10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Stay in Touch",
                          style: Theme.of(context).textTheme.headline4?.copyWith(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                          ),
                    ],
                  ),
                ),
                ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/instagram.png', height: 35), radius: 15, backgroundColor:Colors.white),
                title: const Text("Follow Us on Instagram",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){
                  _launchInstaURL();
                }
                  
              ),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/twitter.png', height: 50), radius: 16, backgroundColor:Colors.white),
                title: const Text("Follow Us on Twitter",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){
                  _launchTwitterUrl();
                }
              ),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/tiktok.png', height: 35), radius: 15, backgroundColor:Colors.white),
                title: const Text("Follow Us on TikTok",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){
                  _launchTiktokURL();
                }
              ),
              
              Padding(
                  padding: const EdgeInsets.only(left: 10, right:10, bottom: 10),
                  child: Divider(height: 20, thickness: 1, color: Color.fromARGB(255, 80, 78, 78)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Support",
                          style: Theme.of(context).textTheme.headline4?.copyWith(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                          ),
                    ],
                  ),
                ),
                 
                
                const SizedBox(height: 15,),
                
                ListTile(
                  onTap: (){Navigator.pushNamed(context, '/t');},
                  leading: Text("Terms & Conditions", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, fontSize: 18),),
                  trailing:  Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ), 
              
                   Padding(
                  padding: const EdgeInsets.only(left: 10, right:10, bottom: 10),
                  child: Divider(height: 20, thickness: 1, color: Color.fromARGB(255, 80, 78, 78)),
                ),
                
              ListTile(
                
                leading: const Text("Log Out",
                    style: TextStyle(color: Colors.red, fontSize: 17)),
                onTap: () async {
                      await auth
                      .signOut()
                      .then((value) => Navigator.pushNamed(context, '/start'));
                    },
              ),
              
          ]),
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

// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:url_launcher/url_launcher.dart';


// _launchURL() async {
//   const url = 'https://adfs.aub.edu.lb/adfs/ls/?SAMLRequest=jZLbTgIxEIZfZdP7PVBFtAESlBhJUAmgF96Y2XZWmnTbtdN6eHuXRSOYaLxrZ%2Bab%2BedvhwS1acQkho1d4nNECslbbSyJLjFi0VvhgDQJCzWSCFKsJtdzwbNCNN4FJ51he8jfBBChD9pZlsymI%2FYoj%2BBY9gZQDORJidAv%2B4MzkLIHiBVXCrGASgFXpxVL7tFTS45Y26jFiSLOLAWwoQ0V%2FCgtjlPO18VA8DPR5w8smbbbaAuhozYhNCTyHFRFGcQyQxUzU3b33FDOksmXuAtnKdboV%2BhftMS75fwbN%2FUh3RqXb%2FfmOTW7QwqSsmbT%2FChlyeLTrnNtlbZPfztV7opIXK3Xi3Rxu1qz8XDbX3Sb%2B%2FG%2FBNUYQEGArZ5hvo8Pdw9%2F0w6eTRfOaPmeXDpfQ%2FhdVy%2FrdRGt0qorFdFSg1JXGlXrnzHu9cIjBByx4COyfLwbevjBxh8%3D&RelayState=https%3A%2F%2Flms.aub.edu.lb%2F&SigAlg=http%3A%2F%2Fwww.w3.org%2F2001%2F04%2Fxmldsig-more%23rsa-sha256&Signature=C7E7fmHVJUNlF096TCjwtIKZCfZkKf64NdtvnRFvN3XsZPV5vdqz%2F3owDaX7JGsZojuJghACydnoLfENDEHGQr3A9QJ1e0d4%2BnPFdQlw7stEtqtVdqa83tpe1jA%2BMgG5zWYESUpq8qJPqY8EPtwpOxAgRedukXU5ZcLRaX2eFVSll9S0CCMTfuX2H6mc%2BI4wmWSgMNJLOErRkJ%2F7JsaKVRMT1AFjwSNB71Kxp7aUgY5aOpEPWC9y2OiNQ1CnH%2FVbuG9SYoxFhB4CtFtSRgoHEuawyDSSoooXRh1P50N%2BevyayHsfNooKWPCZo13H5Dmh%2Fkv%2BTM4JLq1ljDWplLvgxw%3D%3D';
//   if (await launch(url)) {
//     await canLaunch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// _launchURL2() async {
//   const url = 'https://www.aub.edu.lb/Pages/AUBSIS.aspx';
//   if (await launch(url)) {
//     await canLaunch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

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
                  
                }
                  
              ),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/twitter.png', height: 50), radius: 16, backgroundColor:Colors.white),
                title: const Text("Follow Us on Twitter",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){}
              ),
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('assets/images/tiktok.png', height: 35), radius: 15, backgroundColor:Colors.white),
                title: const Text("Follow Us on TikTok",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                onTap: (){}
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
                ListTile(
                  onTap: (){Navigator.pushNamed(context, '/t');},
                  leading: Text("Privacy Policy", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, fontSize: 18),),
                  trailing:  Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ),
                   Padding(
                  padding: const EdgeInsets.only(left: 10, right:10, bottom: 10),
                  child: Divider(height: 20, thickness: 1, color: Color.fromARGB(255, 80, 78, 78)),
                ),
                
              ListTile(
                
                leading: const Text("Log Out",
                    style: TextStyle(color: Colors.red, fontSize: 17)),
                onTap: (){
                  FirebaseAuth.instance
                      .signOut()
                      .then((value) => Navigator.pushNamed(context, '/'));
                }
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

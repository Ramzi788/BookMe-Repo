// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projects/database.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:ionicons/ionicons.dart';
import 'package:projects/database.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 1000,
            color: Colors.black,
            child: Center(
              child: Column(
              
                children: [
                  Lottie.network(
              'https://assets2.lottiefiles.com/packages/lf20_jjub6wfu.json',
              height: 290
              ),
              
              Text("Set Reminders for yourself", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 30 ),),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/');
              }, child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10),
                child: Text("Get Started"),
              ))
                ]
              ),
            )
          ),
        ),
      ),
    );
}}
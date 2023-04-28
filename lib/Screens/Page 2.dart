// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatefulWidget {
   const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height:1000,
            color: Colors.black,
            child: Center(
              child: Column(
              
                children: [
                  Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_SuD7G5.json',
              height: 330, 
              
              ),
              
              const Text("Create your own \nTo-Do List for the day", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 30 ),),
              
                ]
              ),
            )
          ),
        ),
      ),
    );
}}
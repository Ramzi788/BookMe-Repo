// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/database.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Screens/Page1.dart';
import '../Screens/Page 2.dart';
import '../Screens/Page 3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final _controller = PageController();

Widget build(BuildContext context) {
  final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        
        children: [
          SizedBox(height:30),
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
                
              ],
            ),
          ),
          const SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/');
                }, child: Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10),
                  child: Text("Get Started"),
                )),
          ),
          const SizedBox(height: 50,),
          // dot indicators
          Center(
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: theme().primaryColorDark,
                dotColor: Colors.blue.shade800,
                dotHeight: 15,
                dotWidth: 15,
                spacing: 16,
                //verticalOffset: 50,
                jumpScale: 3,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
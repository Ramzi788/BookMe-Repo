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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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

          // dot indicators
          SmoothPageIndicator(
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
        ],
      ),
    );
  }
}
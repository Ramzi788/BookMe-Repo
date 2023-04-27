// ignore_for_file: deprecated_member_use, non_constant_identifier_names


import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Screens/Page1.dart';
import '../Screens/Page 2.dart';
import '../Screens/Page 3.dart';



class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  

@override
  Widget build(BuildContext context) {
  final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        
        children: [
          const SizedBox(height:30),
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
            child: ElevatedButton(
              onPressed: (){
                  
                  Navigator.pushNamed(context, '/');
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Get Started"),
                  ),
                ),
              style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight),
                
                ),
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
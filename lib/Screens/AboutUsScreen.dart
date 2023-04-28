// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
        backgroundColor: theme().primaryColor,
        appBar: AppBar(elevation: 0, backgroundColor: theme().primaryColor, 
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
          color: Colors.white,
          
          ),),
        
          ),
        body: ListView(
          children: [
             Container(
                height: 150, 
                width: double.infinity,
                color: theme().primaryColor , 
                child: const Center(child: Text("The Book Me Story",textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold ),)),
              ),

            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Text(
              "At BookMe, our ultimate aim is to provide a better educational experience at AUB for the students. We understand the importance of having a convenient and efficient way to ensure they have a quiet and comfortable workspace when studying.  Our goal is to create a stress-free and productive environment for students, which we believe is crucial for their academic success.\n\n We care about providing a solution to the problem of finding a suitable study spot in a crowded library. Many students struggle to find a quiet and peaceful space to focus and complete their assignments, leading to distractions and reduced productivity.  ",
              textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ],
        ),
        );
    
}}
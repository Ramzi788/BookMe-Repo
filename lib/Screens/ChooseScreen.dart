// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Expanded(
            child: Center(
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  
                  Text("Select one of the below", textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white)),
                
                    
                    
                    
                    const SizedBox(height: 45.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme().primaryColorDark,
                          minimumSize: const Size.fromHeight(45),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                        
                        onPressed: (){Navigator.pushNamed(context, '/user');profileLabel = "Student";}, 
                        child: const Text("Student", style: TextStyle(color: Colors.white),)
                      ),
                    ),
            
                    
                    const SizedBox(height: 10.0),
                    Center(child: Text("- OR -", style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white),)),
                    const SizedBox(height: 10.0),  
            
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(45),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                        
                        onPressed: (){Navigator.pushNamed(context, '/user');
                        profileLabel = "Staff";}, 
                        child: const Text("Staff", style: TextStyle(color: Colors.black),),
                        
                      ),
                    ),
                ] ),
            ))
              ],
            ) 
  );
  }
}
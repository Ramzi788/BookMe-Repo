// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//Login Part
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _uController =TextEditingController();
  

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 170), 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Enter", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 5,),
                Text("Your", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 15,),
                Text("Personal Details", style: Theme.of(context).textTheme.headline4?.copyWith(color: theme().primaryColorDark), ),
              ],
            ),
          ),
          //Upload Logo HERE
          const SizedBox(height: 100),
          Expanded(
            
            child: Container(
              decoration:  BoxDecoration(
                color: theme().primaryColor, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  
                  
          //First name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: _firstName,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: fName, //Makes text hover on Press
                  prefixIcon: Icon(Icons.mail, color: theme().primaryColorDark),           
                  ),),),)),
              const SizedBox(
                height: 10.0,
              ),
          //First name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: _lastName,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: lName, //Makes text hover on Press
                  prefixIcon: Icon(Icons.mail, color: theme().primaryColorDark),           
                  ),),),)),
              const SizedBox(
                height: 10.0,
              ),

              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: _uController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: username, //Makes text hover on Press
                  prefixIcon: Icon(Icons.mail, color: theme().primaryColorDark),           
                  ),),),)),
              const SizedBox(
                height: 10.0,
              ),



          const SizedBox(height:70),
          //Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme().primaryColorDark,
                minimumSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              
              onPressed: ()
              {
                setState(() {
                  registeredUsername = _uController.text;
                  registeredfName = _firstName.text;
                  registeredlName = _lastName.text;
                  });
                Navigator.pushNamed(context, '/register');
              },
              child: const Text(Continue, style: TextStyle(color: Colors.white),)
            ),
          ),


          
        ])


        ))]));

}


}


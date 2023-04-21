// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;
  TextEditingController _eController = TextEditingController();
  TextEditingController _pController = TextEditingController();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _uController = TextEditingController();

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);},),
          backgroundColor: theme().primaryColor,
          elevation: 0,
          toolbarHeight: 100,
          title: Text("Edit Profile", style: TextStyle(fontSize: 25)),
          centerTitle: true,
          ),
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: CircleAvatar(radius: 120, backgroundColor: Colors.grey, ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 5, right: 20),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.grey.shade200,
                width: 100,
                child: Text("Personal Information"),
                ),
            ), 
            Padding(
              padding: const EdgeInsets.only(left:25, top:10),
              child: Text("First Name", style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    controller: _firstName,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.white,
                      filled: true,
                       //Makes text hover on Press
                      
                    ),
                  ),
                
              )),
              Padding(
              padding: const EdgeInsets.only(left:25, top:20),
              child: Text("Last Name", style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    controller: _lastName,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.white,
                      filled: true,
                       //Makes text hover on Press
                      
                    ),
                  ),
                
              )),

              Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 5, right: 20),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.grey.shade200,
                width: 100,
                child: Text("Account Information"),
                ),
            ), 
             Padding(
              padding: const EdgeInsets.only(left:25, top:10),
              child: Text("Email Address", style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    controller: _eController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.white,
                      filled: true,
                       //Makes text hover on Press
                      
                    ),
                  ),
                
              )),
              Padding(
              padding: const EdgeInsets.only(left:25, top:20),
              child: Text("Username", style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    controller: _uController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.white,
                      filled: true,
                       //Makes text hover on Press
                      
                    ),
                  ),
                
              )),
              Padding(
              padding: const EdgeInsets.only(left:25, top:20),
              child: Text("Password", style: TextStyle(fontSize: 15),),
            ),
              Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    controller: _pController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.white,
                      filled: true,
                       //Makes text hover on Press
                      
                    ),
                  ),
                
              )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: GestureDetector(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme().primaryColorDark,
                  minimumSize: const Size.fromHeight(45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                
                onPressed: ()
                {
                  Future<void> fetchData() async{
                    final user = auth.currentUser;
                    if(user != null) {
                      await FirebaseFirestore.instance.collection('Users').doc(user.uid)
                          .get()
                          .then((ds) {
                        registeredUsername = ds['username'];
                        registeredfName = ds['fname'];
                        registeredlName = ds['lname'];
                        registeredEmail = ds['Email'];
                        profileLabel = ds['ProfileLabel'];
                      });
                    }
                  }
                  Future<void> wait() async{
                    await fetchData();
                  }
                  setState(() {
                    wait();
                    finalPass = _pController.text;
                  });
                  auth.signInWithEmailAndPassword(email: _eController.text, password:_pController.text)
                      .then((value) { wait();Navigator.pop(context);}).onError((error, stackTrace){
                        if (_eController.text == '' || _pController.text == '' ||
                         _uController.text == '' || _firstName.text == '' || _lastName.text == '') {
                          showAlertDialogUserEmpty(context);} else showAlertDialogReg(context);});
                },
                child: const Text("Confirm Changes", style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
          ],
        ),
        );
    
}}
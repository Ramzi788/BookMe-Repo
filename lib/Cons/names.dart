// ignore_for_file: deprecated_member_use
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Screens/HomeScreen.dart';


bool pressed = false;

const String email = "Enter your email*";
const String username = "Enter your username*";
const String password = "Enter password*";
const String cPassword = "Confirm Password*";
const String login = "Login";
const String Continue = "Continue";
const String regText = "Register";
const String logText = "LOGIN";
const String forPass = "Forgot Password?";
const String Ortext = "- OR -";
const String rem = "Remember me";
const String forgPass = "Forgot password?";
const String fName = "First Name*";
const String lName = "Last Name*";
late String registeredEmail = '';
late String registeredUsername = '';
late String registeredfName = '';
late String registeredlName = '';
late String finalPass = '';
late String profileLabel = '';
FirebaseAuth auth = FirebaseAuth.instance;
void showAlertDialogLogin(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "Wrong username or password",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

void showAlertDialogUserEmpty(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "Please fill in the required fields",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

void showAlertDialogUsername(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "Username already exists",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

void showAlertDialogReg(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "Wrong username or password",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

void showPassDontMatch(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "The passwords that you have entered don't match",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
void showAlertDialogForg(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Error!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "The inputted email does not exist. \n\nPlease try again",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}


List<String> list = ["1 hour", "2 hours"];
String _selected = list[0];
void showRegisterAlert(BuildContext context){
  Widget alert = 
  SimpleDialog(
    backgroundColor: theme().primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    children: [
          ListTile(
            title: const Text("Duration", style: TextStyle(color: Colors.white),), 
            trailing: DropdownButton(
              dropdownColor: theme().primaryColor,
              style: TextStyle(color: Colors.white),
              value: _selected,
              onChanged: (val) {
                setState(){
                  _selected = val as String;
                }
              },

              items: list.map((e) => DropdownMenuItem(child: Text(e), value: e, )).toList(),
            )

          ),
          Padding(
            padding: const EdgeInsets.only(top:5, left: 30, right: 30),
            child: ElevatedButton(
              onPressed: (){
                pressed = false;
              },
              child: const Text("Reserve Seat")
            ),
          )
        
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
    
}
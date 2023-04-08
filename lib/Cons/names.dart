// ignore_for_file: deprecated_member_use
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import '../Cons/themes.dart';

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
String registeredEmail = '';
String registeredUsername = '';
String registeredfName = '';
String registeredlName = '';
String finalPass = '';
String profileLabel = '';

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
      "The username does not exist",
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

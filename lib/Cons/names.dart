import 'package:flutter/material.dart';
import '../Cons/themes.dart';


const String email = "Enter your email";
const String username = "Enter your username";

const String password = "Enter password";
const String cPassword = "Confirm Password";
const String login = "Login";
const String Continue = "Continue";
const String regText = "Register"; 
const String logText = "LOGIN";
const String forPass = "Forgot Password?";
const String Ortext = "- OR -";
const String rem = "Remember me";
const String forgPass = "Forgot password?";
const String fName = "First Name";
const String lName = "Last Name";
String registeredEmail = '';
String registeredUsername = '';
String finalPass = '';


void showAlertDialogLogin(BuildContext context){
  Widget ok = TextButton(onPressed: (){Navigator.pushNamed(context, '/login');}, child: Text("Ok"));
  Widget alert = AlertDialog(
    title:  Text("Error!", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),),
    content: Text("Please try again with the correct format",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(context:  context, builder:
    (BuildContext context) { return alert;});
  
  
  
}
  void showAlertDialogReg(BuildContext context){
  Widget ok = TextButton(onPressed: (){Navigator.pushNamed(context, '/register');}, child: Text("Ok"));
  Widget alert = AlertDialog(
    title:  Text("Error!", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),),
    content: Text("Please try again with the correct format",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(context:  context, builder:
    (BuildContext context) { return alert;});
  
  
  
}
void showAlertDialogForg(BuildContext context){
  Widget ok = TextButton(onPressed: (){Navigator.pushNamed(context, '/forgotpass');}, child: Text("Ok"));
  Widget alert = AlertDialog(
    title:  Text("Error!", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),),
    content: Text("Please try again with the correct format",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
    backgroundColor: theme().primaryColor,
    actions: [
      ok,
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
  showDialog(context:  context, builder:
    (BuildContext context) { return alert;});
  
  
  
}




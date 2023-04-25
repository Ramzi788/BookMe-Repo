// ignore_for_file: deprecated_member_use

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Cons/themes.dart';
import 'package:lottie/lottie.dart';

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
late String regTime = ' ';
late String regTable = ' ';
bool UserUsed = false;
FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference userData = FirebaseFirestore.instance.collection('Users');

PickedFile? _imageFile; DecorationImage defaultImage = DecorationImage( image: AssetImage('assets/images/moodle.png'), fit: BoxFit.cover, ); 

class CreateTask extends StatelessWidget { 
  final taskController; VoidCallback onSave; 
  VoidCallback onCancel; 
  CreateTask({ super.key, required this.taskController, required this.onSave, required this.onCancel, }); @override 
  Widget build(BuildContext context) { 
    return AlertDialog( 
      content: 
      Container( height: 120, color: Colors.white, 
        child: Column( children: 
      [ 
        TextField( controller: taskController, style: TextStyle(color: Colors.black), 
        decoration: InputDecoration( border: OutlineInputBorder(borderSide: BorderSide.none), 
        hintText: "Add new task", 
        hintStyle: TextStyle(color:Colors.black) ), ), 
        const SizedBox(height: 10,), 
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              ElevatedButton(onPressed: onSave, child: Text("Confirm"),style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight, ),), 
              const SizedBox(width: 10,), 
              ElevatedButton(onPressed: onCancel, child: Text("Cancel"), style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight),), ],) ], ), ), 
              backgroundColor:Colors.white, 
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20), ), ); }
              
              }



class CreateReminder extends StatelessWidget { 
  final reminderController; VoidCallback onSave; 
  VoidCallback onCancel; 
  CreateReminder({ super.key, required this.reminderController, required this.onSave, required this.onCancel, }); @override 
  Widget build(BuildContext context) { 
    return AlertDialog( 
      content: 
      Container( height: 120, color: Colors.white, 
        child: Column( children: 
      [ 
        TextField( controller: reminderController, style: TextStyle(color: Colors.black), 
        decoration: InputDecoration( border: OutlineInputBorder(borderSide: BorderSide.none), 
        hintText: "Add new Reminder", 
        hintStyle: TextStyle(color:Colors.black) ), ), 
        const SizedBox(height: 10,), 
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              ElevatedButton(onPressed: onSave, child: Text("Confirm"),style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight, ),), 
              const SizedBox(width: 10,), 
              ElevatedButton(onPressed: onCancel, child: Text("Cancel"), style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight),), ],) ], ), ), 
              backgroundColor:Colors.white, 
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20), ), ); } }
List<bool> registered = List.filled(260, false);
List<Color> colors = List.filled(260, theme().primaryColorLight);
Map<String, int> tableMap = {
  'Table1': 0,
  'Table2': 13,
  'Table3': 26,
  'Table4': 39,
  'Table5': 52,
  'Table6': 65,
  'Table7': 78,
  'Table8': 91,
  'Table9': 104,
  'Table10': 117,
  'Table11': 130,
  'Table12': 143,
  'Table13': 156,
  'Table14': 169,
  'Table15': 182,
  'Table16': 195,
  'Table17': 208,
  'Table18': 221,
  'Table19': 234,
  'Table20': 247
};
Map<String, int> timeMap = {
  '8:00': 0,
  '9:00': 1,
  '10:00': 2,
  '11:00': 3,
  '12:00': 4,
  '13:00': 5,
  '14:00': 6,
  '15:00': 7,
  '16:00': 8,
  '17:00': 9,
  '18:00': 10,
  '19:00': 11,
  '20:00': 12
};
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

void showCheck(BuildContext context){
  showDialog(context: context, 
  builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_EHCkebp4JN.json', repeat: false),
        );
      },
  );
  Future.delayed(Duration(seconds: 2),(){
    Navigator.of(context).pop();
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
    content: Stack(
      children: [
        Text(
          "Please fill in the required fields",
          style:
              Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
        ),
        SizedBox(height: 100,),
        Lottie.network('https://assets6.lottiefiles.com/packages/lf20_bhw1ul4g.json')
      ],
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

void showReservedForm(BuildContext context) {
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
      "The selected table is already reserved at the selected time. \n\nPlease choose another time or table",
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

void showInvalidEmailForm(BuildContext context) {
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
      "The inputted email is not formatted properly. \n\nPlease try again",
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
Future<void> GetDocsInfo() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('Tables').get();
  for(final DocumentSnapshot doc in snapshot.docs){
    String regTable = doc.id;
    int index = tableMap[regTable]!;
    registered[index + 0] =  doc['8:00'];
    registered[index + 1]=  doc['9:00'];
    registered[index + 2] =  doc['10:00'];
    registered[index + 3] =  doc['11:00'];
    registered[index + 4] = doc['12:00'];
    registered[index + 5] = doc['13:00'];
    registered[index + 6] = doc['14:00'];
    registered[index + 7] = doc['15:00'];
    registered[index + 8] = doc['16:00'];
    registered[index + 9] = doc['17:00'];
    registered[index + 10] = doc['18:00'];
    registered[index + 11] = doc['19:00'];
    registered[index + 12] = doc['20:00'];
  }
}
void fetchUserData() async{
  final user = FirebaseAuth.instance.currentUser;
  if(user != null) {
    await userData.doc(registeredEmail)
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

void notify() async {
  String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();
  await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: -1,
        channelKey: 'channelKey',
        title: 'Seat Reservation',
        body: '10 minutes remaining',
        wakeUpScreen: true
      ),
      schedule: NotificationInterval(
          interval: 5, timeZone: timezom, repeats: false));
}
void showSamePass(BuildContext context) {
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
      "The entered password must be different than your current password",
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
void showUsernameExists(BuildContext context) {
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
      "This username is already in use, please choose a new one",
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
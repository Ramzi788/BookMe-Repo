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
String registeredEmail = '';
String registeredUsername = '';
String registeredfName = '';
String registeredlName = '';
String finalPass = '';
String profileLabel = '';
String regTime = ' ';
String regTable = ' ';
bool UserUsed = false;
int notificationId = 1;
FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference userData = FirebaseFirestore.instance.collection('Users');
CollectionReference tableData = FirebaseFirestore.instance.collection('Tables');
PickedFile? _imageFile;
DecorationImage defaultImage = const DecorationImage(
  image: AssetImage('assets/images/moodle.png'),
  fit: BoxFit.cover,
);

late List<bool> registered;
late List<Color> colors;

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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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

void showCheck(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        content: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_EHCkebp4JN.json',
            repeat: false),
      );
    },
  );
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.of(context).pop();
  });
}

void showAlertDialogEmpty(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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

Future<void> updateTables() async {
  registered = List.filled(260, false);
  colors = List.filled(260, theme().primaryColorLight);
  await tableData.get().then((QuerySnapshot querySnapshot) {
    for (var table in querySnapshot.docs) {
      registered[tableMap[table.id]! + 0] = table['8:00'];
      registered[tableMap[table.id]! + 1] = table['9:00'];
      registered[tableMap[table.id]! + 2] = table['10:00'];
      registered[tableMap[table.id]! + 3] = table['11:00'];
      registered[tableMap[table.id]! + 4] = table['12:00'];
      registered[tableMap[table.id]! + 5] = table['13:00'];
      registered[tableMap[table.id]! + 6] = table['14:00'];
      registered[tableMap[table.id]! + 7] = table['15:00'];
      registered[tableMap[table.id]! + 8] = table['16:00'];
      registered[tableMap[table.id]! + 9] = table['17:00'];
      registered[tableMap[table.id]! + 10] = table['18:00'];
      registered[tableMap[table.id]! + 11] = table['19:00'];
      registered[tableMap[table.id]! + 12] = table['20:00'];
    }
  });
  for (int i = 0; i < registered.length; i++) {
    colors[i] = registered[i] ? Colors.red : theme().primaryColorLight;
  }
  await userData.doc(registeredEmail).get().then((ds) {
    String rTable = ds['regTable'];
    String rTime = ds['regTime'];
    if (rTable != 'none' && rTime != 'none') {
      colors[tableMap[rTable]! + timeMap[rTime]!] = Colors.orange;
    }
  });
}

void fetchUserData() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await userData.doc(registeredEmail).get().then((ds) {
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
          id: notificationId,
          channelKey: 'channelKey',
          title: 'Seat Reservation',
          body: '10 minutes remaining',
          wakeUpScreen: true),
      schedule:
          NotificationInterval(interval: 5, timeZone: timezom, repeats: false));
  notificationId++;
}

void cancelNotifiactionMessage() async {
  String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();

  await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: notificationId,
        channelKey: 'channelKey',
        title: 'Reservation Cancelled',
        body: '',
        wakeUpScreen: true,
      ),
      schedule:
          NotificationInterval(interval: 5, timeZone: timezom, repeats: false));
  notificationId++;
}

void showSamePass(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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
      child: const Text("Ok"));
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
    backgroundColor: theme().primaryColorLight,
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

void showALreadyReserved(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Already Reserved!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "This table is already reserved, please choose another time or table",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColorLight,
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

void showMoreThanOneReserve(BuildContext context) {
  Widget ok = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Ok"));
  Widget alert = AlertDialog(
    title: Text(
      "Already Reserved!",
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
    ),
    content: Text(
      "You have already reserved, please cancel or wait until after your registration to reserve again.",
      style:
          Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),
    ),
    backgroundColor: theme().primaryColorLight,
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

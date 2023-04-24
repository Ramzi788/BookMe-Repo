import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import 'Layouts/GetStartedPage.dart';
import 'Layouts/Splash_Page.dart';
import '/Cons/themes.dart';
import 'Config/App_Router.dart';
import 'package:firebase_core/firebase_core.dart';
import '/firebase_options.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'channelKey',
        channelName: 'channelName',
        channelDescription: 'channelDescription',
        playSound: false,
        defaultColor: Colors.purple,
        ledColor: Colors.white,
        enableLights: true,
        enableVibration: true)
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const BookMe());
}

class BookMe extends StatelessWidget {
  const BookMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashPage.routeName,
    );
  }
}
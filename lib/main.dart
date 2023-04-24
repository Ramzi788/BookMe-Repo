import 'package:flutter/material.dart';
import 'package:projects/Layouts/Home_Page.dart';
import 'Layouts/GetStartedPage.dart';
import '/Cons/themes.dart';
import 'Config/App_Router.dart';
import 'package:firebase_core/firebase_core.dart';
import '/firebase_options.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Layouts/Splash_Page.dart';


Future<void> main() async {

  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');

  WidgetsFlutterBinding.ensureInitialized();
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
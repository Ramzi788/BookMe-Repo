import 'package:flutter/material.dart';
import 'Layouts/Splash_Page.dart';
import '/Cons/themes.dart';
import 'Config/App_Router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projects/firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const BookMe());
}

class BookMe extends StatelessWidget {
  const BookMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: SplashPage.routeName
  );
  }
}
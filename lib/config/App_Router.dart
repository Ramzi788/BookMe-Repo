import 'package:flutter/material.dart';
import '/Layouts/ForgotPass_Page.dart';
import '/Layouts/Login_Page.dart';
import '/Layouts/Register_Page.dart';
import '/Layouts/Splash_Page.dart';
import '/Layouts/Welcome_Page.dart';
import '/Layouts/Home_Page.dart';
import '/Layouts/ForPass2_Page.dart';
import '/Layouts/Profile_Page.dart';
import '../Layouts/Notifications_Page.dart';
import '../Layouts/UserDetails_Page.dart';
import '../Layouts/Choose_Page.dart';
import '../Layouts/Settings_Page.dart';
import '../Layouts/EditProfile_Page.dart';
import '../Layouts/AboutUsPage.dart';
import '../Layouts/GetStartedPage.dart';
import '../Layouts/ToDoListPage.dart';
import '../Layouts/TermsPage.dart';
import '../Layouts/RemindersPage.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return WelcomePage.route();
      case SplashPage.routeName:
        return SplashPage.route();
      case HomePage.routeName:
        return HomePage.route();
      case LoginPage.routeName:
        return LoginPage.route();
      case RegisterPage.routeName:
        return RegisterPage.route();
      case ForgotPassPage.routeName:
        return ForgotPassPage.route();
      case ForPass2Page.routeName:
        return ForPass2Page.route();
      case ProfilePage.routeName:
        return ProfilePage.route();
      case NotiPage.routeName:
        return NotiPage.route();
      case UserPage.routeName:
        return UserPage.route();
      case ChoosePage.routeName:
        return ChoosePage.route();
      case SettingsPage.routeName:
        return SettingsPage.route();
      case EditProfilePage.routeName:
        return EditProfilePage.route();
      case AboutPage.routeName:
        return AboutPage.route();
      case ToDoListPage.routeName:
        return ToDoListPage.route();
      case GetStartedPage.routeName:
        return GetStartedPage.route();
      case TermsPage.routeName:
        return TermsPage.route();
      case RemindersPage.routeName:
        return RemindersPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('error')),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}

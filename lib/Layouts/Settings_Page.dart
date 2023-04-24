import 'package:flutter/material.dart';
import '../Screens/SettingsScreen.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const SettingsPage(),
        settings: const RouteSettings(name: routeName));
  }

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SettingsScreen());
  }
}

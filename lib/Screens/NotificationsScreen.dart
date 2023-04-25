// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});
  

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext Context) {
   
    return Scaffold(
      backgroundColor: theme().primaryColor,
      body: Container(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 30),
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                child: ListTile(
                  leading: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text("Notifications",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white)),
                )),
            Divider(
              thickness: 3,
              color: Colors.grey.shade100,
            ),
            ElevatedButton(onPressed: (){}, child: Text("hI"))
            
          ],
        ),
      ),
    );
  }
}

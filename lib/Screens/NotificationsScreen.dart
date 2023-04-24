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
            // Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            //     child: Container(
            //       height: 70,
            //       width: double.infinity,
            //       padding: const EdgeInsets.only(
            //           top: 20, bottom: 1, left: 40, right: 25),
            //       decoration: BoxDecoration(
            //         color: theme().primaryColorDark,
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Reserve",
            //             style: Theme.of(context).textTheme.headline2?.copyWith(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //         ],
            //       ),
            //     )),
            // Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            //     child: Container(
            //       height: 70,
            //       width: double.infinity,
            //       padding: const EdgeInsets.only(
            //           top: 20, bottom: 1, left: 40, right: 25),
            //       decoration: BoxDecoration(
            //         color: theme().primaryColorDark,
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Reserve",
            //             style: Theme.of(context).textTheme.headline2?.copyWith(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //         ],
            //       ),
            //     )),
            // Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            //     child: Container(
            //       height: 70,
            //       width: double.infinity,
            //       padding: const EdgeInsets.only(
            //           top: 20, bottom: 1, left: 40, right: 25),
            //       decoration: BoxDecoration(
            //         color: theme().primaryColorDark,
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Reserve",
            //             style: Theme.of(context).textTheme.headline2?.copyWith(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //         ],
            //       ),
            //     )),
            // Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            //     child: Container(
            //       height: 70,
            //       width: double.infinity,
            //       padding: const EdgeInsets.only(
            //           top: 20, bottom: 1, left: 40, right: 25),
            //       decoration: BoxDecoration(
            //         color: theme().primaryColorDark,
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Reserve",
            //             style: Theme.of(context).textTheme.headline2?.copyWith(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //         ],
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}

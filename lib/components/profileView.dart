import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';

Widget profileView(BuildContext context) => Container(
      decoration: BoxDecoration(
        color: theme().primaryColor,
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 20,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.person),
                    color: Colors.black,
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              child: Text(registeredUsername,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );

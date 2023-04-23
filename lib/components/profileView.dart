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
          bottom: 1,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
              child: CircleAvatar(
                radius: 45,
                backgroundColor: theme().primaryColorDark,
                backgroundImage: defaultImage.image,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: Text(registeredUsername,
                  style: TextStyle(color: theme().primaryColorDark, fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );

import 'package:flutter/material.dart';
import '../Cons/names.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 70
            ),
          ],
        ),
      ),
      title: Text(
        registeredUsername,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        "Student",
        style: TextStyle(color: Colors.grey.shade400),
        ),

    );
  }
}
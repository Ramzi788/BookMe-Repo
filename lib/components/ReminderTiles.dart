import 'package:flutter/material.dart';

import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ReminderTile extends StatelessWidget {
  final String titleofReminder; 
  final String details;
  final bool reminderStatus; 
  Function (bool?)? onChanged;
  Function (BuildContext?)? deleteFunction;
  ReminderTile({
    super.key, 
    required this.titleofReminder, 
    required this.details,
    required this.reminderStatus, 
    required this.onChanged,
    required this.deleteFunction 
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Slidable(
        endActionPane: ActionPane(
          
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction, 
              icon: Icons.delete, 
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              )
          ],
          ),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: theme().primaryColorLight, 
            borderRadius: BorderRadius.circular(20)),
          
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Checkbox(
                  value: reminderStatus, 
                  onChanged: onChanged,
                  fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                  checkColor: theme().primaryColorDark,
                  ),
                Text(
                  titleofReminder,
                  style: TextStyle(
                    color: Colors.white, 
                    decoration: (reminderStatus)? TextDecoration.lineThrough:TextDecoration.none,
                    fontSize: 20,
                    ),
                    
                    ),
                    
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}
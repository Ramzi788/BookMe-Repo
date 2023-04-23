import 'package:flutter/material.dart';

import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String nameOfTask; 
  final bool taskStatus; 
  Function (bool?)? onChanged;
  Function (BuildContext?)? deleteFunction;
  ToDoTile({
    super.key, 
    required this.nameOfTask, 
    required this.taskStatus, 
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
          height: 65,
          decoration: BoxDecoration(
            color: theme().primaryColorLight, 
            borderRadius: BorderRadius.circular(20)),
          
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Checkbox(
                  value: taskStatus, 
                  onChanged: onChanged,
                  fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                  checkColor: theme().primaryColorDark,
                  ),
                Text(
                  nameOfTask,
                  style: TextStyle(
                    color: Colors.white, 
                    decoration: (taskStatus)? TextDecoration.lineThrough:TextDecoration.none,
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
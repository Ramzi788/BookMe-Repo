import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String nameOfTask; 
  final bool taskStatus; 
  final PanelController? myPanelController;
  Function (bool?)? onChanged;
  Function (BuildContext?)? deleteFunction;
  ToDoTile({
    Key? key,
    required this.myPanelController,
    required this.nameOfTask, 
    required this.taskStatus, 
    required this.onChanged,
    required this.deleteFunction, 

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){myPanelController?.open();},
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
        child: Slidable(
          endActionPane: ActionPane(
            
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction, 
                icon: Icons.delete, 
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(10),
                ),
            ],
            ),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
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
            ), ),
                 
                  
                   
                  
                  
                
              ),
            ),
            
          ),
        );
     
  }
}
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class ReminderTile extends StatelessWidget {
  final String nameOfReminder; 
  final String details; 
  final String pickedDate; 
  final String startTime; 
  final String endTime; 
  final bool taskStatus; 
  final PanelController? myPanelController;
  
  Function (BuildContext?)? deleteFunction;
  ReminderTile({
    Key? key,
    required this.myPanelController,
    required this.nameOfReminder, 
    required this.taskStatus, 
    
    required this.deleteFunction, 
    required this.details, 
    required this.pickedDate, 
    required this.startTime, 
    required this.endTime 
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
            height: 170,
          
            decoration: BoxDecoration(
              color: theme().primaryColorLight, 
              borderRadius: BorderRadius.circular(20)),
            
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10, right: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 15),
                        child: Text(
                          nameOfReminder,
                          style: const TextStyle(
                            color: Colors.white, 
                            fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.calendar_month_outlined, color: Colors.white),
                      ),
                      const SizedBox(width: 10,), 
                      Text((pickedDate), style: const TextStyle(color: Colors.white),),
                    ],),
                  ),
                  Row (children: [
                    
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.access_time, color: Colors.white),
                    ),
                    const SizedBox(width: 10,), 
                    Text(("$startTime - $endTime"), style: const TextStyle(color: Colors.white),)
                  ],), 
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10, right: 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(child: Text(details, style: const TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,)),
                        ],
                      ),
                  ),
                  
                ],
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}
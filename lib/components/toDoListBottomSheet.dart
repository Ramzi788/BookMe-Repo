import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../database.dart';



class toDoBottomSheet extends StatelessWidget {
  late final taskController; 
  final detailsController;
  VoidCallback onSave; 
  VoidCallback onCancel; 
  toDoBottomSheet({
    super.key,
    required this.taskController, 
    required this.detailsController,
    required this.onSave,
    required this.onCancel
  });

  @override
  
 
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 450,
          color: Colors.white,
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Add Task", style: TextStyle(color: theme().primaryColor, fontSize: 30, fontWeight: FontWeight.bold)),
                            ),
                        ],),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25, bottom: 10),
                                child: Text("Task", style: TextStyle(color: theme().primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black)),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      ),
                                    hintText: "Enter title here.",
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 73, 74, 75))
                                  ),
                                  controller: taskController,
                                  style: const TextStyle(color: Colors.white),
                                  
                                ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25, bottom: 10, top: 10),
                                child: Text("Description", style: TextStyle(color: theme().primaryColor, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black)),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    
                                    border: OutlineInputBorder(borderSide: BorderSide.none),

                                    hintText: "Enter note here.",
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 73, 74, 75))
                                  ),
                                  controller: detailsController,
                                  style: const TextStyle(color: Colors.white),
                                  
                                ),
                            ),
                          ),
                        ],
                      ),
                       
                          
                       
             
                      
                      
                      
                        
                      
                 
              Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                          onPressed: (){onCancel;}, 
                          child: Text("Cancel"),style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight ),
                          ), 
                          ElevatedButton(
                          onPressed: (){onSave;}, 
                          child: Text("Confirm"),style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight, ),
                          ), 
                        ],
                       ) 
            ],
          ),
        ),
      
    );
  }

}
// ignore_for_file: deprecated_member_use, non_constant_identifier_names


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/database.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import '../components/ToDoTiles.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive/hive.dart';

import '../components/toDoListBottomSheet.dart';
//Login Part
class ToDoScreen extends StatefulWidget {
 
  const ToDoScreen({super.key,});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  
  final _myBox = Hive.box('myBox');
  ToDoData toDoDB = ToDoData();
  final taskController = TextEditingController();
  final detailsController = TextEditingController();
  
  @override
  void initState() {
    //After opening app for the first time ever.
    if(_myBox.get("ToDoList") == null){
      toDoDB.createInitialData();
    }
    else {
      //Not the first time the user opened the app
      toDoDB.loadData();
    }

    super.initState();
  }

  
  void changeCheckBox (bool? value, int index){
    setState(() {
      toDoDB.toDoList[index][1] = !toDoDB.toDoList[index][1];
    });
    toDoDB.updateData();
  }

  void saveTask(){
    setState(() {
     
      toDoDB.toDoList.add([taskController.text, false]);
      taskController.clear();
     
    });
    Navigator.pop(context);
    toDoDB.updateData();
  }

  void createaTask(){
    showDialog(context: context, 
    builder: (context) => toDoBottomSheet(
      taskController: taskController,
      // detailsController: detailsController,
      onSave: saveTask,
      onCancel: ()=> Navigator.pop(context),
      ) );
  }
  void deleteTask(int index){
    setState(() {
      toDoDB.toDoList.removeAt(index);
    });
    toDoDB.updateData();
  }

  
  
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title:Text("To-Do List", style: TextStyle(color: Colors.white, fontSize: 20)),
 
        centerTitle: true,
        elevation: 0,
        ),

        body:  
        
        ListView(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("All ToDos", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme().primaryColorLight,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )
                        ),
                        onPressed: (){
                          createaTask();
                        }, 
                      child: Text("+ Add a new task", style: TextStyle(color: Colors.white, fontSize: 15))),
                    )                  
                  ],
                ),
              ),
            ),
            toDoDB.toDoList.length == 0 ?
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(child: Text("No Task(s) Added Yet", style: TextStyle(color: Colors.white, fontSize: 20))))
            :
            ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: toDoDB.toDoList.length,
            itemBuilder: (context, index) => ToDoTile(
              nameOfTask: toDoDB.toDoList[index][0], 
              taskStatus: toDoDB.toDoList[index][1], onChanged: (value) => changeCheckBox(value, index), 
              deleteFunction: (context) => deleteTask(index),
              ),
            )  
        ])
          
          
    );
  }
}

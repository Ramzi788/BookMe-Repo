// ignore_for_file: deprecated_member_use, non_constant_identifier_names


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/components/ReminderTiles.dart';
import 'package:projects/database.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import '../components/ToDoTiles.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive/hive.dart';

import '../components/reminderBottomSheet.dart';
//Login Part
class ReminderScreen extends StatefulWidget {
 
  const ReminderScreen({super.key,});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  final _myBox = Hive.box('myBox2');
  remindersData remDB = remindersData();
  final reminderController = TextEditingController();

  
  @override
  void initState() {
    //After opening app for the first time ever.
    if(_myBox.get("REMINDERS") == null){
      remDB.createInitialData();
    }
    else {
      //Not the first time the user opened the app
      remDB.loadData();
    }

    super.initState();
  }

  
  void changeCheckBox (bool? value, int index){
    setState(() {
      remDB.reminderList[index][2] = !remDB.reminderList[index][2];
    });
    remDB.updateData();
  }

  void saveReminder(){
    setState(() {
      remDB.reminderList.add([reminderController.text, reminderController.text, false]);
      reminderController.clear();
     
    });
    Navigator.pop(context);
    remDB.updateData();
  }

  void createReminder(){
    showDialog(context: context, 
    builder: (context) => CreateReminder(
      reminderController: reminderController,
      onSave: saveReminder,
      onCancel: ()=> Navigator.pop(context),
      ) );
  }
  void deleteReminder(int index){
    setState(() {
      remDB.reminderList.removeAt(index);
    });
    remDB.updateData();
  }

  
  
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title: Text("Reminders", 
        style: TextStyle(color: Colors.white, fontSize: 20)), 
        centerTitle: true,
        elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
           
              context: context, 
            builder: (builder) => 
            Container(
              height: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.transparent,
               ),
              child: ReminderBottomSheet(),
              ),
            
           
            );
          },
            // createReminder();
          
          child: Icon(Icons.add),
    
        ),

        body:  
        
        ListView(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15, top: 10),
                child: Text("Your Reminders", style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
            remDB.reminderList.length == 0 ?
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Center(child: Text("No Reminder(s) Added Yet", style: TextStyle(color: Colors.white, fontSize: 20))))
            :
            ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: remDB.reminderList.length,
            itemBuilder: (context, index) => ReminderTile(
              titleofReminder: remDB.reminderList[index][0], 
              details: remDB.reminderList[index][1],
              reminderStatus: remDB.reminderList[index][2], onChanged: (value) => changeCheckBox(value, index), 
              deleteFunction: (context) => deleteReminder(index),
              ),
            )  
        ])
          
          
    );
  }
}

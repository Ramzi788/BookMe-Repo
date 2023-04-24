import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../database.dart';

class ReminderBottomSheet extends StatefulWidget {
 
  ReminderBottomSheet({super.key,});

  @override
  State<ReminderBottomSheet> createState() => _ReminderBottomSheetState();
}

class _ReminderBottomSheetState extends State<ReminderBottomSheet> {

  void showDate(){
    showDatePicker(
      
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2030), 
      
    );
  }


  final reminderController = TextEditingController();
  final reminderDetailController = TextEditingController();
  final _myBox = Hive.box('myBox2');
  remindersData remDB = remindersData();
  
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
      remDB.reminderList.add([reminderController.text, reminderDetailController.text, false]);
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
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color.fromARGB(255, 29, 29, 29),
            ),
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel", style: TextStyle(color: Color.fromARGB(255, 13, 23, 109), fontSize: 15),),),
                  ),
                  Text("Details", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Done", style: TextStyle(color: Color.fromARGB(255, 13, 23, 109), fontSize: 15),),),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 46, 45, 45)
                  ),
                  
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:10, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                fillColor: Color.fromARGB(255, 46, 45, 45),
                                filled: true,
                                hintText: "Reminder",
                                hintStyle: TextStyle(color: Color.fromARGB(255, 73, 74, 75))
                              ),
                              controller: reminderController,
                              style: const TextStyle(color: Colors.white),
                              
                            ),
                            
                          
                          
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: const Divider(height: 1, thickness: 1, color: Color.fromARGB(255, 87, 86, 86)),
                       ),
                          
                       Padding(
                         padding: const EdgeInsets.only(top:5, left: 10, right: 10),
                         child: Container(
                          decoration: BoxDecoration(
                            
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                fillColor: Color.fromARGB(255, 46, 45, 45),
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                filled: true,
                                hintText: "Details",
                                hintStyle: TextStyle(color: Color.fromARGB(255, 73, 74, 75))
                              ),
                              controller: reminderController,
                              style: const TextStyle(color: Colors.white),
                              
                            ),
                            
                          ),
                       ),
                        
                      
                    ],
                  ),
                ),
              ),
              Padding(
                         padding: const EdgeInsets.only(top:5, left: 10, right: 10),
                         child: Container(
                          width: 375,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 46, 45, 45)
                            ),
                            child: ListTile(
                              onTap: (){showDate();},
                              leading: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), 
                                  color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(Icons.calendar_month, color: Colors.white,),
                                )),
                              title: Text("Pick a Date", style: TextStyle(color: Colors.white, fontSize: 18),),
                            )
                            
                          ),
                       ),
            ],
          ),
        ),
      
    );
  }
}
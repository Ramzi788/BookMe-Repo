// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:projects/database.dart';
import '../Cons/themes.dart';
import '../components/ToDoTiles.dart';
import 'package:hive/hive.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../components/toDoListBottomSheet.dart';

//Login Part
class ToDoScreen extends StatefulWidget {
  const ToDoScreen({
    super.key,
  });

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final _myPanelController = PanelController();
  final _myBox = Hive.box('myBox');
  ToDoData toDoDB = ToDoData();
  final taskController = TextEditingController();
  

  @override
  void initState() {
    toDoDB.loadData();
    super.initState();
  }

  void changeCheckBox(bool? value, int index) {
    setState(() {
      toDoDB.toDoList[index][1] = !toDoDB.toDoList[index][1];
    });
    toDoDB.updateData();
  }

  void saveTask() {
    setState(() {
      toDoDB.toDoList.add([taskController.text, false]);
      taskController.clear();
      
    });
    _myPanelController.close();
    toDoDB.updateData();
  }

  void deleteTask(int index) {
    setState(() {
      toDoDB.toDoList.removeAt(index);
    });
    toDoDB.updateData();
  }

  void deleteAll(){
    setState(() {
      toDoDB.toDoList.clear();
    });
    toDoDB.updateData();
  }

  void editTask(int index) {}

  @override
  Widget build(BuildContext Context) {
    return SlidingUpPanel(
      controller: _myPanelController,
      minHeight: 0,
      maxHeight: 300,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      margin: const EdgeInsets.only(top: 110),
      body: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("To-Do List",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView(children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15, top: 10),
                child: Row(
                  children: [
                    const Text(
                      "All ToDos",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 60),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              )),
                          onPressed: () {
                            setState(() {
                              deleteAll();
                            });
                          },
                          child: const Text("Delete All",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: theme().primaryColorLight,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              )),
                          onPressed: () {
                            _myPanelController.open();
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            toDoDB.toDoList.isEmpty
                ? SizedBox(
                    height: MediaQuery.of(context).size.height / 1.3,
                    child: const Center(
                        child: Text("No Task(s) Added Yet",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: toDoDB.toDoList.length,
                    itemBuilder: (context, index) => ToDoTile(
                      myPanelController: _myPanelController,
                      nameOfTask: toDoDB.toDoList[index][0],
                      taskStatus: toDoDB.toDoList[index][1],
                      onChanged: (value) => changeCheckBox(value, index),
                      deleteFunction: (context) => deleteTask(index),
                    ),
                  )
          ])),
      panelBuilder: (controller) => toDoBottomSheet(
          myPanelController: _myPanelController,
          taskController: taskController,
          onSave: saveTask,
          onCancel: () => _myPanelController.close(),
    ));
  }
}

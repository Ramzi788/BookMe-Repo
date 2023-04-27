// ignore_for_file: deprecated_member_use, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:projects/components/ReminderTiles.dart';
import 'package:projects/components/reminderBottomSheet.dart';
import 'package:projects/database.dart';
import '../Cons/themes.dart';
import 'package:hive/hive.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

//Login Part
class ReminderScreen extends StatefulWidget {
  const ReminderScreen({
    super.key,
  });

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  final _myPanelController = PanelController();
  final _myBox = Hive.box("myBox2");
  remindersData remDB = remindersData();
  final reminderController = TextEditingController();
  final detailsController = TextEditingController();
  final dateController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  get visualDensity => null;

  @override
  void initState() {
    //After opening app for the first time ever.
    if (_myBox.get("REMINDERS") == null) {
      remDB.createInitialData();
    } else {
      //Not the first time the user opened the app
      remDB.loadData();
    }

    super.initState();
  }

  void saveReminder() {
    setState(() {
      remDB.reminderList.add([
        reminderController.text,
        detailsController.text,
        dateController.text,
        startTimeController.text,
        endTimeController.text,
        false
      ]);
      reminderController.clear();
      detailsController.clear();
      dateController.clear();
      startTimeController.clear();
      endTimeController.clear();
    });
    _myPanelController.close();
    remDB.updateData();
  }

  void deleteReminder(int index) {
    setState(() {
      remDB.reminderList.removeAt(index);
    });
    remDB.updateData();
  }

  void editTask(int index) {}

//   return MaterialApp(
//   title: 'Flutter Demo',
//   theme: ThemeData(
//     primarySwatch: Colors.blue,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//   ),
//   home: Scaffold(),
// );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SlidingUpPanel(
                controller: _myPanelController,
                minHeight: 0,
                maxHeight: 600,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                margin: const EdgeInsets.only(top: 110),
                body: Scaffold(
                    backgroundColor: Colors.black,
                    appBar: AppBar(
                      backgroundColor: Colors.black,
                      title: const Text("Reminders",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      centerTitle: true,
                      elevation: 0,
                    ),
                    body: ListView(children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, bottom: 15, top: 10),
                          child: Row(
                            children: [
                              const Text(
                                "Your Reminders",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        )),
                                    onPressed: () {
                                      setState(() {
                                        remDB.reminderList.clear();
                                      });
                                    },
                                    child: Text("Delete All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            theme().primaryColorLight,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
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
                      remDB.reminderList.isEmpty
                          ? Container(
                              height: MediaQuery.of(context).size.height / 1.3,
                              child: const Center(
                                  child: Text("No Task(s) Added Yet",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20))))
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemCount: remDB.reminderList.length,
                              itemBuilder: (context, index) => ReminderTile(
                                    myPanelController: _myPanelController,
                                    nameOfReminder: remDB.reminderList[index]
                                        [0],
                                    deleteFunction: (context) =>
                                        deleteReminder(index),
                                    details: remDB.reminderList[index][1],
                                    pickedDate: remDB.reminderList[index][2],
                                    startTime: remDB.reminderList[index][3],
                                    endTime: remDB.reminderList[index][4],
                                    taskStatus: remDB.reminderList[index][5],
                                  ))
                    ])),
                panelBuilder: (controller) => ReminderBottomSheet(
                      myPanelController: _myPanelController,
                      reminderController: reminderController,
                      detailsController: detailsController,
                      dateController: dateController,
                      startTimeController: startTimeController,
                      endTimeController: endTimeController,
                      onSave: saveReminder,
                      onCancel: () => _myPanelController.close(),
                    ))));
  }
}

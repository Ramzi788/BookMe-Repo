import 'package:flutter/material.dart';
import '../Cons/themes.dart';


class ReminderBottomSheet extends StatelessWidget {
  late final myPanelController;
  late final reminderController; 
  late final detailsController;
  late final dateController;
  late final startTimeController;
  late final endTimeController; 
  VoidCallback onSave;
  VoidCallback onCancel;
  ReminderBottomSheet(
      {super.key,
      required this.reminderController,
      required this.detailsController,
      required this.dateController, 
      required this.startTimeController, 
      required this.endTimeController,
      required this.onSave,
      required this.onCancel,
      required this.myPanelController
      
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Add Reminder",
                        style: TextStyle(
                            color: theme().primaryColor,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        "Reminder",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 128, 125, 125),
                            width: 1.5)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Enter title here.",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 73, 74, 75))),
                      controller: reminderController,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, bottom: 10, top: 10),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            color: theme().primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 128, 125, 125),
                            width: 1.5)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Enter note here.",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 73, 74, 75))),
                      controller: detailsController,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, bottom: 10, top: 10),
                      child: Text(
                        "Date",
                        style: TextStyle(
                            color: theme().primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color:const Color.fromARGB(255, 128, 125, 125),
                            width: 1.5)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "dd/mm/yyyy",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 73, 74, 75))),
                      controller: dateController,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 80, bottom: 10, top: 10),
                              child: Text(
                                "Start Time",
                                style: TextStyle(
                                    color: theme().primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color:const  Color.fromARGB(255, 128, 125, 125),
                                    width: 1.5)),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Enter note here.",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 73, 74, 75))),
                              controller: startTimeController,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 110, bottom: 10, top: 10),
                              child: Text(
                                "End Time",
                                style: TextStyle(
                                    color: theme().primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 25, bottom: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2 - 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color.fromARGB(255, 128, 125, 125),
                                    width: 1.5)),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Enter note here.",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 73, 74, 75))),
                              controller: endTimeController,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          backgroundColor: theme().primaryColorLight,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: onCancel,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Cancel"),
                      ),
                      
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme().primaryColorLight,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: onSave,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Confirm"),
                    ),
                  
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
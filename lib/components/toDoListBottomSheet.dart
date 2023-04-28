import 'package:flutter/material.dart';
import '../Cons/themes.dart';


class toDoBottomSheet extends StatelessWidget {
  late final taskController;
  late final myPanelController;
  VoidCallback onSave;
  VoidCallback onCancel;
  toDoBottomSheet(
      {
      super.key,
      required this.taskController,
      required this.onSave,
      required this.onCancel,
      required this.myPanelController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
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
                    child: Text("Add Task",
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
                        "Task",
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
                      maxLength: 40,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Enter title here.",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 73, 74, 75))),
                      controller: taskController,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:  ElevatedButton(
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
              ),
            ), 
            
          ],
        ),
      ),
    );
  }
}

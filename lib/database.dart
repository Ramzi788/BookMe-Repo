
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:projects/Cons/names.dart';

class DatabaseService{
  final String uid;
  DatabaseService({required this.uid});
  Future updateUserData(String email, String password, String fname, String lname, String username, String profileLabel)async{
      return await userData.doc(uid).set({'Email': email, 'password': password,
                                              'fname': fname, 'lname': lname, 'username': username, 'ProfileLabel': profileLabel});
  }
}

class ToDoData{
  List toDoList = [];
  final myBox = Hive.box('myBox');
 
  //used if the app is opened for the first time ever.
  void createInitialData(){
    toDoList = [["Example", false]];
  }

  void loadData(){
    toDoList = myBox.get("ToDoList");
  }

  void updateData (){
    myBox.put("ToDoList", toDoList);
  }
}

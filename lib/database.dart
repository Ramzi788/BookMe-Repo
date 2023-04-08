import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;
  DatabaseService({required this.uid});
  final CollectionReference UsersColletion = FirebaseFirestore.instance.collection('Users');
  Future updateUserData(String email, String password, String fname, String lname, String username, String profileLabel)async{
      return await UsersColletion.doc(uid).set({'Email': email, 'password': password,
                                              'fname': fname, 'lname': lname, 'username': username, 'ProfileLabel': profileLabel});
  }
}
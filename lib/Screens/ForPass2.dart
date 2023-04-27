// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';

class ForgPass2Screen extends StatefulWidget {
  const ForgPass2Screen({super.key});

  @override
  State<ForgPass2Screen> createState() => _ForgPass2ScreenState();
}

class _ForgPass2ScreenState extends State<ForgPass2Screen> {
  bool _isVisibile = true;
  TextEditingController newPass1 = TextEditingController();
  TextEditingController newPass2 = TextEditingController();

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
       body: ListView(
        
        children: [
          const SizedBox(height: 200), 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Update", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 5,),
                Text("Account", style: Theme.of(context).textTheme.headline1?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(height: 15,),
                Text("Enter your new password", textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline4?.copyWith(color: theme().primaryColorDark)),
              ],
            ),
          ),
          //Upload Logo HERE
          const SizedBox(height: 100),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                color: theme().primaryColor, 
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  
                  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: newPass1,
            obscureText: _isVisibile, // To hide password characters.
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: password, //Makes text hover on Press
                prefixIcon: Icon(Icons.lock, color: theme().primaryColorDark), 
                suffixIcon: Tooltip(
                  message: "Show Password", 
                  verticalOffset: -48,
                  child: IconButton(icon: Icon(_isVisibile ? Icons.visibility: Icons.visibility_off,color: theme().primaryColorDark) , onPressed: (){setState(() {
                    _isVisibile = !_isVisibile;
                  });},),),),),),),),

            const SizedBox(height: 10),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              padding: const EdgeInsets.only(left: 2, right: 2, top: 9, bottom: 9),
              decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              ), 
              child: SizedBox(
                height: 40, 
                child: TextFormField(
                  controller: newPass2,
            obscureText: _isVisibile, // To hide password characters.
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: cPassword, //Makes text hover on Press
                prefixIcon: Icon(Icons.lock, color: theme().primaryColorDark), 
                suffixIcon: Tooltip(
                  message: "Show Password", 
                  verticalOffset: -48,
                  child: IconButton(icon: Icon(_isVisibile ? Icons.visibility: Icons.visibility_off,color: theme().primaryColorDark) , onPressed: (){setState(() {
                    _isVisibile = !_isVisibile;
                  });},),),),),),),), 



          const SizedBox(height: 20,),
          //Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme().primaryColorDark,
                minimumSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
              
              onPressed: () async {if (newPass1.text != newPass2.text) {
                showPassDontMatch(context);
              }
              else if(newPass1.text == finalPass){
                showSamePass(context);
              }
              else if (newPass1.text == '' || newPass2.text == ''){
                showAlertDialogEmpty(context);
              }
                else{await auth.currentUser!.updatePassword(newPass1.text).then((value) => Navigator.pop(context));}},
              child: const Text("Done", style: TextStyle(color: Colors.white),)
            ),
          ),
        ])))]));
    
}}
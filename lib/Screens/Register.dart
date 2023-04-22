// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/database.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:lottie/lottie.dart';

//Login Part
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;
  final _eController = TextEditingController();
  final _pController = TextEditingController();
  final _cpController = TextEditingController();

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: ListView(scrollDirection: Axis.vertical, children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Create",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(
                  height: 5,
                ),
                Text("Account",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Please enter credentials to continue",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: theme().primaryColorDark),
                ),
              ],
            ),
          ),

          Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_u8o7BL.json',
            height: 260
            ),
          //Upload Logo HERE
          
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Column(children: [
                    const SizedBox(
                      height: 50,
                    ),

                    //Email
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 2, right: 2, top: 9, bottom: 9),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: SizedBox(
                            height: 40,
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: _eController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                filled: true,
                                hintText: email, //Makes text hover on Press
                                prefixIcon: Icon(Icons.mail,
                                    color: theme().primaryColorDark),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),

                    //Password Input
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 2, right: 2, top: 9, bottom: 9),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: _pController,
                            obscureText:
                                _isVisibile, // To hide password characters.
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: password, //Makes text hover on Press
                              prefixIcon: Icon(Icons.lock,
                                  color: theme().primaryColorDark),
                              suffixIcon: Tooltip(
                                message: "Show Password",
                                verticalOffset: -48,
                                child: IconButton(
                                  icon: Icon(
                                      _isVisibile
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: theme().primaryColorDark),
                                  onPressed: () {
                                    setState(() {
                                      _isVisibile = !_isVisibile;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //Confirm Password Input
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 2, right: 2, top: 9, bottom: 9),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            controller: _cpController,
                            obscureText:
                                _isVisibile, // To hide password characters.
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade100),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: cPassword, //Makes text hover on Press
                              prefixIcon: Icon(Icons.lock,
                                  color: theme().primaryColorDark),
                              suffixIcon: Tooltip(
                                message: "Show Password",
                                verticalOffset: -48,
                                child: IconButton(
                                  icon: Icon(
                                      _isVisibile
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: theme().primaryColorDark),
                                  onPressed: () {
                                    setState(() {
                                      _isVisibile = !_isVisibile;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    //Register Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme().primaryColorDark,
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          onPressed: () {
                            if (_cpController.text != _pController.text) {
                              showPassDontMatch(context);
                            } else {
                              setState(() {
                                registeredEmail = _eController.text;
                              });
                              registerUser();
                              
                      
                                Navigator.pushNamed(context, '/login');
                              
                            }
                          },
                          child: const Text(
                            regText,
                            style: TextStyle(color: Colors.white),
                          )),
                    ),

                    const SizedBox(height: 10.0),
                    Row(
                      children: const [
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child:
                                Divider(thickness: 0.2, color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Or",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            child:
                                Divider(thickness: 0.2, color: Colors.white)),
                        SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        bottom: 40
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            login,
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ])))
        ]));
  }

  Future registerUser() async {
    auth.createUserWithEmailAndPassword(
        email: _eController.text, password: _pController.text)
        .then((value) {})
        .onError((error, stackTrace) {
      showAlertDialogReg(context);
    });
    User? user = auth.currentUser;
    await DatabaseService(uid: user!.uid).updateUserData(
        registeredEmail,
        _pController.text,
        registeredfName,
        registeredlName,
        registeredUsername,
        profileLabel);
  }
}

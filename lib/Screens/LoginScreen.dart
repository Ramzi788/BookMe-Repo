import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
import 'package:lottie/lottie.dart';

//Login Part
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  bool _isVisibile = true;
  final TextEditingController _eController = TextEditingController();
  final TextEditingController _pController = TextEditingController();
  late Box box1;
  @override
  void initState() {
    super.initState();
    createBox();
    getData();
  }

  void createBox() async {
    box1 = await Hive.openBox('loginData');
    getData();
  }

  void getData() async {
    if (box1.get('email') != null) {
      _eController.text = box1.get('email');
      _isChecked = true;
      setState(() {});
    }
    if (box1.get('pass') != null) {
      _pController.text = box1.get('pass');
      _isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: ListView(scrollDirection: Axis.vertical, children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(
                  height: 5,
                ),
                Text("Back",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(color: theme().primaryColorDark)),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Lottie.network(
              'https://assets2.lottiefiles.com/packages/lf20_jcikwtux.json',
              height: 260),
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                          margin: const EdgeInsets.only(top: 1, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        _isChecked = newValue!;
                                      });
                                    },
                                    activeColor: Colors.white,
                                    checkColor: theme().primaryColorDark,
                                    fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                                  ),
                                  const Text(rem,
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/forgotpass');
                                  },
                                  //Forgot Password
                                  child: Text(
                                    forgPass,
                                    style: TextStyle(
                                        color: theme().primaryColorDark),
                                  )),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Continue Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: GestureDetector(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme().primaryColorLight,
                              minimumSize: const Size.fromHeight(45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            onPressed: () async {
                              login();
                              setState(() {
                                if (!_isChecked) {
                                  box1.delete('email');
                                  box1.delete('pass');
                                }
                                registeredEmail = _eController.text;
                                finalPass = _pController.text;
                              });
                              await auth
                                  .signInWithEmailAndPassword(
                                  email: _eController.text,
                                  password: _pController.text)
                                  .then((value) async {
                                    await updateTables();
                                    fetchUserData();
                                    showCheck(context);
                                    Future.delayed(const Duration(seconds: 2), () {
                                  Navigator.pushNamed(context, '/homepage');
                                });
                              }).onError((error, stackTrace) {
                                if (_eController.text == '' ||
                                    _pController.text == '') {
                                  showAlertDialogEmpty(context);
                                } else {
                                  showAlertDialogReg(context);
                                }
                              });
                            },
                            child: const Text(
                              Continue,
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
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
                        bottom: 20,
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/choose');
                          },
                          child: const Text(
                            regText,
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ])))
        ]));
  }

  void login() {
    if (_isChecked) {
      box1.put('email', _eController.text);
      box1.put('pass', _pController.text);
    }
  }
}
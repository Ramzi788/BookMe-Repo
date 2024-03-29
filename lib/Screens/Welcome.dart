// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10,),
                    RichText(
                      text: TextSpan(
                          text: "Studying at\nJaffet is",
                          style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.5,
                            letterSpacing: 1.5,
                            color: Colors.white,
                          )),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' easier\n',
                                style: TextStyle(
                                    color: theme().primaryColorDark,
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(
                                text: ' than you think',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ]),
                      textAlign: TextAlign.center,
                    ),
          
                    Lottie.network('https://assets5.lottiefiles.com/datafiles/6WfDdm3ooQTEs1L/data.json'),
                    const SizedBox(height: 50),
                    Text(
                      "Sign in or Create an Account Now",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme().primaryColorLight,
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const SizedBox(height: 10.0),
                    Center(
                        child: Text(
                      "- OR -",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(color: Colors.white),
                    )),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/user');
                          },
                          child: const Text(
                            "Create an Account",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ]),
            ))
          ],
        ));
  }
}

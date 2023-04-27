import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projects/Cons/themes.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/todo'),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 0,
                  left: 10,
                ),
                child: Container(
                  width: 220,
                  height: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Color.fromARGB(255, 248, 132, 123),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "To Do List",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: const [
                              Text(
                                "Create your own tasks",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/todo');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 248, 132, 123),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Lottie.network(
                              'https://assets10.lottiefiles.com/packages/lf20_GhP4yttyKg.json',
                              height: 150,
                              width: 400)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 155,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/reminders'),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 10, top: 0),
                  child: Container(
                    width: 220,
                    height: 160,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      color: Colors.orange,
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Reminders",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: const [
                                Text(
                                  "Set your own reminders",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      height: 160,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.orange,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Lottie.network(
                              'https://assets3.lottiefiles.com/packages/lf20_vyL7gxqRAH.json',
                              height: 150,
                              width: 400)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:projects/Cons/names.dart';
import 'package:projects/components/TableView.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../components/table.dart';
import '../components/table2.dart';
import '../components/InfoCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isVisible2 = true;
bool isVisible3 = false;
int counter = 1;

class _HomeScreenState extends State<HomeScreen> {
  final tableWidget = table(
    isVisibile: isVisible2,
  );
  final tableWidget2 = Secondtable(
    isVisible: isVisible3,
  );
  final _myPanelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: Colors.black,
        controller: _myPanelController,
        minHeight: 0,
        maxHeight: 800,
        body: Scaffold(
          backgroundColor: theme().primaryColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: Text(
                    "More ways to use BookMe",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                        letterSpacing: 0.1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Column(
                    children: const [InfoCard()],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Book Your Table",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _myPanelController.open();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 20, top: 20),
                          child: Container(
                            height: 430,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: theme().primaryColorLight),
                            child: Column(children: [
                              Lottie.network(
                                  'https://assets3.lottiefiles.com/packages/lf20_ckNiUzrdtw.json'),
                              const Text(
                                "Reserve Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    child: const Icon(
                      Icons.settings,
                      size: 26.0,
                    ),
                  )),
            ],
            elevation: 0,
            backgroundColor: theme().primaryColor,
          ),
          drawer: const SideBarScreen(),
        ),
        panelBuilder: (controller) => MapbottomSheet(
          myPanelController: _myPanelController,
        ),
      ),
    );
  }
}

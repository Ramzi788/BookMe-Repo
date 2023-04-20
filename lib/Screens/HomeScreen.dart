// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projects/Cons/names.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../components/table.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static DateTime current_date = DateTime.now();
  static final DateFormat _date = DateFormat('mm-dd');
  final String formatted = _date.format(current_date);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().primaryColor,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Book Your Seat and Time",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 5),
                child: Row(children: [
                  Container(color: Colors.blue, height: 20, width: 20), 
                  const SizedBox(width: 10,), 
                  const Text("Available", style: TextStyle(color: Colors.white)), 
                  const SizedBox(width: 30,), 
                  Container(color: Colors.orange, height: 20, width: 20), 
                  const SizedBox(width: 10,), 
                  const Text("Your Booking", style: TextStyle(color: Colors.white)), 
                  const SizedBox(width: 30,), 
                  Container(color: Colors.red, height: 20, width: 20), 
                  const SizedBox(width: 10,), 
                  const Text("Unavailable", style: TextStyle(color: Colors.white)), 
                ]),
              ),
              const Flexible(child:table()),
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
                child: const Icon(Icons.settings, size: 26.0,),
              )),
        ],
        elevation: 0,
        backgroundColor: theme().primaryColor,
      ),
      drawer: const SideBarScreen(),
    );
  }
}

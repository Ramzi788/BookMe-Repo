// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projects/Cons/names.dart';
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
  final tableWidget =  table(isVisibile: isVisible2 ,);
  final tableWidget2 =  Secondtable(isVisible: isVisible3 ,);
  static DateTime current_date = DateTime.now();
  static final DateFormat _date = DateFormat('mm-dd');
  final String formatted = _date.format(current_date);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                     child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: InfoCard(),
                      ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(bottom: 1, left : 20, top: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        
                        alignment: Alignment.center,  
                        
                        child: IconButton(onPressed: (){
                          setState(() {
                            isVisible2 = true;
                            isVisible3 = false;
                            counter=1;
                            tableWidget.isVisibile = isVisible2;
                            tableWidget2.isVisible = isVisible3;
                          });
                        }, icon: Icon(Icons.arrow_back_ios, color: theme().primaryColorDark, size: 20)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        
                        child: IconButton(onPressed: (){
                          setState(() {
                            isVisible2 = false;
                            isVisible3 = true;
                            counter =2;
                            tableWidget.isVisibile = isVisible2;
                            tableWidget2.isVisible = isVisible3;
                          });
                        }, icon: Icon(Icons.arrow_forward_ios, color: theme().primaryColorDark, size: 20,)),
                      ),
                      Text ("Page $counter", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                
                Container(child: (isVisible2 == true)? 
                table(isVisibile: isVisible2,): Secondtable(isVisible: isVisible3)),
        
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(color: theme().primaryColorLight, height: 20, width: 20), 
                    const SizedBox(width: 10,), 
                    const Text("Available", style: TextStyle(color: Colors.white)), 
                    const SizedBox(width: 30,), 
                    
                    Container(color: Colors.red, height: 20, width: 20), 
                    const SizedBox(width: 10,), 
                    const Text("Unavailable", style: TextStyle(color: Colors.white)), 
                  ]),
                ),
              ],
            ),
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

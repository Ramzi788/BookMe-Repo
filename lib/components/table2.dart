import 'package:flutter/material.dart';
import '../Cons/names.dart';

class Secondtable extends StatelessWidget {
  bool isVisible = false;
  Secondtable({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: isVisible, 
      child: ListView(
                      
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 2,),
                        child: DataTable(
                           border: TableBorder.all(color: Color.fromARGB(255, 207, 203, 203),width: 3.5),
                           dataRowHeight: 50,
                           headingRowHeight: 80,
                           columnSpacing: 4,
                           horizontalMargin: 4,

                          columns: [
                            DataColumn(label: Row(children: [SizedBox(width: 3), Text("Table Number", style: TextStyle(color:Colors.white)),SizedBox(width: 3),]) ),
                            DataColumn(label: Expanded(child: Text("8:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("9:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("10:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("11:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("12:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("1:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("2:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("3:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("4:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("5:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("6:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("7:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                            DataColumn(label: Expanded(child: Text("8:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                          ],
                          rows: [
                            DataRow(

                                cells:  [

                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 11", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table11';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),

                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 12", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table12';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 13", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table13';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 14", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table14';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 15", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table15';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(

                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 16", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table16';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),

                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 17", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table17';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 18", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table18';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 19", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table19';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                            DataRow(
                                cells:  [
                                  DataCell(Row(children: [SizedBox(width: 23), Text("Table 20", style: TextStyle(color:Colors.white)),]) ),
                                  DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                                  DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                  DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table20';showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                                ]
                            ),
                          ],
                        )
                      ),
                      
                ]),
    );
  }
}
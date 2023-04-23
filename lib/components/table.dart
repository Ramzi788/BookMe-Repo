import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';
class table extends StatefulWidget {
  bool isVisibile = true;
  table({super.key, required this.isVisibile});

  @override
  State<table> createState() => _tableState();
}

class _tableState extends State<table> {
  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: widget.isVisibile ,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 2,),
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
      
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 1", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table1';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
      
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 2", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table2';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 3", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table3';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 4", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table4';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 5", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table5';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
      
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 6", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table6';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
      
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 7", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table7';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 8", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table8';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 9", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table9';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 10", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){regTime = '8:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container( color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '9:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '10:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '11:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '12:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '13:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '14:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '15:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '16:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '17:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '18:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){regTime = '19:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                            DataCell(GestureDetector(onTap: (){regTime = '20:00'; regTable = 'Table10';showRegisterAlert(context);}, child: Container(color: theme().primaryColorLight, width: 80))),
                          ]
                      ),
                    ],
                  )
              ),
      
            ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../Cons/names.dart';

class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal,
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
                            
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 1", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),

                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 2", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 3", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 4", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 5", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                          ]
                        ),
                      DataRow(
                          
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 6", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),

                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 7", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 8", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 9", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                          ]
                        ),
                        DataRow(
                          cells:  [
                            DataCell(Row(children: [SizedBox(width: 23), Text("Table 10", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container( color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue, width: 80))),
                            DataCell(GestureDetector(onTap: (){showRegisterAlert(context);}, child: Container(color: Colors.blue,width: 80 ))),
                          ]
                        ),
                      ],
                    )
                  ),
            ]);
            
  }
}
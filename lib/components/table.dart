import 'package:cloud_firestore/cloud_firestore.dart';
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
    List<String> list = ["1 hour", "2 hours"];
    String _selected = list[0];
    late String reservedTable;
    late String reservedTime;
    void changeColor(){
      setState(() {
        colors[timeMap[regTime]! + tableMap[regTable]!] = registered[timeMap[regTime]! + tableMap[regTable]!]? Colors.orange:theme().primaryColorLight;
      });
    }
    void showRegisterAlert(BuildContext context){
      Widget alert =
      SimpleDialog(
        backgroundColor: theme().primaryColor, shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        children: [
          ListTile(
              title: const Text("Duration", style: TextStyle(color: Colors.white),),
              trailing: DropdownButton(
                dropdownColor: theme().primaryColor, style: const TextStyle(color: Colors.white),
                value: _selected,
                onChanged: (val) {
                  setState(){
                    _selected = val as String;
                  }
                },

                items: list.map((e) => DropdownMenuItem(child: Text(e), value: e, )).toList(),
              )

          ),
          Padding(
            padding: const EdgeInsets.only(top:5, left: 30, right: 30),
            child: ElevatedButton(
                onPressed: () async{
                  await userData.doc(registeredEmail).get().then((ds){reservedTable = ds['regTable'];
                  reservedTime = ds['regTime'];});
                  if(registered[timeMap[regTime]! + tableMap[regTable]!]){
                    showALreadyReserved(context);
                  }
                  else if(reservedTable != 'none' && reservedTime != 'none'){
                    showMoreThanOneReserve(context);
                  }
                  else{
                    userData.doc(registeredEmail).update(
                        {'regTable': regTable,
                          'regTime': regTime
                        }
                    );
                  notify();
                  tableData.doc(regTable).update(
                  {regTime: true});
                  setState((){
                  registered[timeMap[regTime]! + tableMap[regTable]!] = true;
                  changeColor();
                  });
                  Navigator.pop(context);
                  }
                },
                child: const Text("Reserve Seat")
            ),
          ),
        ],
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });

    }
    return  Visibility(
      visible: widget.isVisibile ,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 2,),
                  child: DataTable(
                    border: TableBorder.all(color: const Color.fromARGB(255, 207, 203, 203),width: 3.5),
                    dataRowHeight: 50,
                    headingRowHeight: 80,
                    columnSpacing: 4,
                    horizontalMargin: 4,

                    columns: [
                      DataColumn(label: Row(children: const [SizedBox(width: 3), Text("Table Number", style: TextStyle(color:Colors.white)),SizedBox(width: 3),]) ),
                      const DataColumn(label: Expanded(child: Text("8:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("9:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("10:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("11:00 AM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("12:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("1:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("2:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("3:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("4:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("5:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("6:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("7:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                      const DataColumn(label: Expanded(child: Text("8:00 PM", style: TextStyle(color:Colors.white),textAlign: TextAlign.center,))),
                    ],
                    rows: [
                      DataRow(

                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 1", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container( color: colors[0], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color:colors[1],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[2], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[3], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color:colors[4],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[5], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[6], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[7], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[8], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[9], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color:colors[10],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[11], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table1'; showRegisterAlert(context);}, child: Container(color: colors[12], width: 80))),

                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 2", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container( color: colors[13], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color:colors[14],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[15], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[16], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color:colors[17],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[18], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[19], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[20], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[21], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[22], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color:colors[23],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[24], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table2'; showRegisterAlert(context);}, child: Container(color: colors[25], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 3", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container( color: colors[26], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color:colors[27],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[28], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[29], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color:colors[30],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[31], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[32], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[33], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[34], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[35], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color:colors[36],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[37], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table3'; showRegisterAlert(context);}, child: Container(color: colors[38], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 4", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container( color: colors[39], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color:colors[40],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[41], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[42], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color:colors[43],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[44], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[45], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[46], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[47], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[48], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color:colors[49],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[50], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table4'; showRegisterAlert(context);}, child: Container(color: colors[51], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 5", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container( color: colors[52], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color:colors[53],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[54], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[55], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color:colors[56],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[57], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[58], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[59], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[60], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[61], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color:colors[62],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[63], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table5'; showRegisterAlert(context);}, child: Container(color: colors[64], width: 80))),
                          ]
                      ),
                      DataRow(

                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 6", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container( color: colors[65], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color:colors[66],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[67], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[68], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color:colors[69],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[70], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[71], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[72], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[73], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[74], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color:colors[75],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[76], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table6'; showRegisterAlert(context);}, child: Container(color: colors[77], width: 80))),

                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 7", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container( color: colors[78], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color:colors[79],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[80], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[81], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color:colors[82],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[83], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[84], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[85], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[86], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[87], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color:colors[88],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[89], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table7'; showRegisterAlert(context);}, child: Container(color: colors[90], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 8", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container( color: colors[91], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color:colors[92],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[93], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[94], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color:colors[95],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[96], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[97], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[98], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[99], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[100], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color:colors[101],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[102], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table8'; showRegisterAlert(context);}, child: Container(color: colors[103], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 9", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container( color: colors[104], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color:colors[105],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[106], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[107], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color:colors[108],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[109], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[110], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[111], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[112], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[113], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color:colors[114],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[115], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table9'; showRegisterAlert(context);}, child: Container(color: colors[116], width: 80))),
                          ]
                      ),
                      DataRow(
                          cells:  [
                            DataCell(Row(children: const [SizedBox(width: 23), Text("Table 10", style: TextStyle(color:Colors.white)),]) ),
                            DataCell(GestureDetector(onTap: ()async {regTime = '8:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container( color: colors[117], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '9:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color:colors[118],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '10:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[119], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '11:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[120], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '12:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color:colors[121],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '13:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[122], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '14:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[123], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '15:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[124], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '16:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[125], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '17:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[126], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '18:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color:colors[127],width: 80 ))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '19:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[128], width: 80))),
                            DataCell(GestureDetector(onTap: ()async {regTime = '20:00'; regTable = 'Table10'; showRegisterAlert(context);}, child: Container(color: colors[129], width: 80))),
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
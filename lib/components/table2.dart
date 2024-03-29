import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import '../Cons/names.dart';
import '../Cons/themes.dart';

class Secondtable extends StatefulWidget {
  bool isVisible = false;
  Secondtable({super.key, required this.isVisible});

  @override
  State<Secondtable> createState() => _SecondtableState();
}

class _SecondtableState extends State<Secondtable> {
  @override
  Widget build(BuildContext context) {
    List<String> list = ["1 hour", "2 hours"];
    String _selected = list[0];
    late String reservedTable;
    late String reservedTime;
    void changeColor() {
      setState(() {
        colors[timeMap[regTime]! + tableMap[regTable]!] =
            registered[timeMap[regTime]! + tableMap[regTable]!]
                ? Colors.orange
                : theme().primaryColorLight;
      });
    }

    Widget show() {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: ElevatedButton(
            onPressed: () async {
              await AwesomeNotifications().cancel(notificationId);
              cancelNotifiactionMessage();
              await userData
                  .doc(registeredEmail)
                  .update({'regTable': 'none', 'regTime': 'none'});
              tableData.doc(regTable).update({regTime: false});
              setState(() {
                registered[timeMap[regTime]! + tableMap[regTable]!] = false;
                changeColor();
              });
              Navigator.pop(context);
            },
            child: const Text("Cancel")),
      );
    }

    void showRegisterAlert(BuildContext context) {
      Widget alert = SimpleDialog(
        backgroundColor: theme().primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        children: [
          ListTile(
              title: const Text(
                "Duration",
                style: TextStyle(color: Colors.white),
              ),
              trailing: DropdownButton(
                dropdownColor: theme().primaryColor,
                style: const TextStyle(color: Colors.white),
                value: _selected,
                onChanged: (val) {},
                items: list
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await userData.doc(registeredEmail).get().then((ds) {
                      reservedTable = ds['regTable'];
                      reservedTime = ds['regTime'];
                    });
                    if (registered[timeMap[regTime]! + tableMap[regTable]!]) {
                      showALreadyReserved(context);
                    } else if (reservedTable != 'none' &&
                        reservedTime != 'none') {
                      showMoreThanOneReserve(context);
                    } else {
                      userData
                          .doc(registeredEmail)
                          .update({'regTable': regTable, 'regTime': regTime});
                      notify();
                      tableData.doc(regTable).update({regTime: true});
                      setState(() {
                        registered[timeMap[regTime]! + tableMap[regTable]!] =
                            true;
                        changeColor();
                      });
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Reserve Table")),
              if (colors[timeMap[regTime]! + tableMap[regTable]!] ==
                  Colors.orange)
                show()
            ],
          ),
        ],
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });
    }

    return Visibility(
      visible: widget.isVisible,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 30,
                right: 30,
                bottom: 2,
              ),
              child: DataTable(
                border: TableBorder.all(
                    color: const Color.fromARGB(255, 207, 203, 203),
                    width: 3.5),
                dataRowHeight: 50,
                headingRowHeight: 80,
                columnSpacing: 4,
                horizontalMargin: 4,
                columns: [
                  DataColumn(
                      label: Row(children: const [
                    SizedBox(width: 3),
                    Text("Table Number", style: TextStyle(color: Colors.white)),
                    SizedBox(width: 3),
                  ])),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "8:00 AM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "9:00 AM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "10:00 AM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "11:00 AM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "12:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "1:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "2:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "3:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "4:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "5:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "6:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "7:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                  const DataColumn(
                      label: Expanded(
                          child: Text(
                    "8:00 PM",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 11", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[130], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[131], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[132], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[133], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[134], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[135], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[136], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[137], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[138], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[139], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[140], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[141], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table11';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[142], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 12", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[143], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[144], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[145], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[146], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[147], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[148], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[149], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[150], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[151], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[152], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[153], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[154], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table12';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[155], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 13", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[156], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[157], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[158], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[159], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[160], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[161], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[162], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[163], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[164], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[165], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[166], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[167], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table13';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[168], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 14", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[169], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[170], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[171], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[172], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[173], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[174], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[175], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[176], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[177], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[178], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[179], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[180], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table14';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[181], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 15", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[182], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[183], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[184], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[185], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[186], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[187], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[188], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[189], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[190], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[191], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[192], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[193], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table15';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[194], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 16", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[195], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[196], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[197], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[198], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[199], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[200], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[201], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[202], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[203], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[204], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[205], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[206], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table16';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[207], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 17", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[208], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[209], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[210], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[211], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[212], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[213], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[214], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[215], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[216], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[217], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[218], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[219], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table17';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[220], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 18", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[221], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[222], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[223], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[224], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[225], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[226], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[227], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[228], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[229], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[230], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[231], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[232], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table18';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[233], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 19", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[234], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[235], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[236], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[237], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[238], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[239], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[240], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[241], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[242], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[243], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[244], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[245], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table19';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[246], width: 80))),
                  ]),
                  DataRow(cells: [
                    DataCell(Row(children: const [
                      SizedBox(width: 23),
                      Text("Table 20", style: TextStyle(color: Colors.white)),
                    ])),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '8:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[247], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '9:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[248], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '10:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[249], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '11:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[250], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '12:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[251], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '13:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[252], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '14:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[253], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '15:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[254], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '16:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[255], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '17:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[256], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '18:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[257], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '19:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[258], width: 80))),
                    DataCell(GestureDetector(
                        onTap: () async {
                          regTime = '20:00';
                          regTable = 'Table20';
                          showRegisterAlert(context);
                        },
                        child: Container(color: colors[259], width: 80))),
                  ]),
                ],
              )),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projects/components/table.dart';
import 'package:projects/components/table2.dart';
import '../Cons/themes.dart';

class MapbottomSheet extends StatefulWidget {
  late final myPanelController;
  MapbottomSheet({
    super.key,
    required this.myPanelController,
  });

  @override
  State<MapbottomSheet> createState() => _MapbottomSheetState();
}

class _MapbottomSheetState extends State<MapbottomSheet> {
  bool isVisible2 = true;

  bool isVisible3 = false;

  @override
  Widget build(BuildContext context) {
    int counter = 1;
    final tableWidget = table(
      isVisibile: isVisible2,
    );
    final tableWidget2 = Secondtable(
      isVisible: isVisible3,
    );
    return MaterialApp(
      home: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 1, left: 20, top: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible2 = true;
                              isVisible3 = false;
                              counter = 1;
                              tableWidget.isVisibile = isVisible2;
                              tableWidget2.isVisible = isVisible3;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,
                              color: theme().primaryColorDark, size: 20)),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible2 = false;
                              isVisible3 = true;
                              counter = 2;
                              tableWidget.isVisibile = isVisible2;
                              tableWidget2.isVisible = isVisible3;
                            });
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: theme().primaryColorDark,
                            size: 20,
                          )),
                    ),
                    Text(
                      "Page $counter",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      color: theme().primaryColorLight, height: 20, width: 20),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Available",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    color: Colors.red,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Unavailable",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
              ),
              Container(
                  child: (isVisible2 == true)
                      ? table(
                          isVisibile: isVisible2,
                        )
                      : Secondtable(isVisible: isVisible3)),
            ],
          ),
        ),
      ),
    );
  }
}

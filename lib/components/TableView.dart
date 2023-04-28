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
  String page = 'Page 1';
  bool isVisible3 = false;

  @override
  Widget build(BuildContext context) {
    final tableWidget = table(
      isVisibile: isVisible2,
    );
    final tableWidget2 = Secondtable(
      isVisible: isVisible3,
    );
    return Center(
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
                              page = 'Page 1';
                              tableWidget.isVisibile = isVisible2;
                              tableWidget2.isVisible = isVisible3;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,
                              color: theme().primaryColorDark, size: 20)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible2 = false;
                              isVisible3 = true;
                              page = 'Page 2';
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
                      page,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(width: 100,),
                    ElevatedButton(onPressed: (){widget.myPanelController.close();}, child: Text("Close"), style: ElevatedButton.styleFrom(backgroundColor: theme().primaryColorLight),)
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
                  const Text("Available",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  const SizedBox(
                    width: 10,
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
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          color: Colors.orange,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Your Reservation",
                          style: TextStyle(color: Colors.white, fontSize: 15)),]),
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
      );
  }
}
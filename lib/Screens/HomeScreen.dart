// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projects/Cons/names.dart';
import '../Cons/themes.dart';
import '../Screens/SideBarScreen.dart';
import '../components/BottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: theme().primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme().primaryColor,
      ),
      drawer: const SideBarScreen(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: theme().primaryColor,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Bottomnav(),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:50),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                padding: EdgeInsets.only(left: 20, right:20),
                width: 320,
                height: 550,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                  child: Stack(
                    children: [
                    Align(
                        alignment: AlignmentDirectional.topStart,
                      child: Positioned(
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                            RegisterAlert(context);
                          }, iconSize: 70,)
                        )
                      ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                                RegisterAlert(context);
                            }, iconSize: 70, )
                          )
                          
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                                RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                                RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                              RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 220),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                              RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 270),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                              RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 310),
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Positioned(
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: IconButton(icon: const Icon(Icons.rectangle_outlined), onPressed: (){
                              RegisterAlert(context);
                            }, iconSize: 70,)
                          )
                          
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Stack(
//   children: [ 

//      //manual position using left, top, right, bottom
//       Positioned(
//         left:0, 
//         top:0,
//         //you can use "right" and "bottom" too
//         child:Container(
//           height:100,
//           width:100,
//           color: Colors.purple,
//           child: Text("Box VI"),
//         )
//       ),
//   ]
// )
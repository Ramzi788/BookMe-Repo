// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:ionicons/ionicons.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
       backgroundColor: theme().primaryColorLight,
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(height: 400),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                color: theme().primaryColor, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                              leading: CircleAvatar(child: Icon(Icons.person_2_outlined, color: Colors.white,),backgroundColor: theme().primaryColorDark,),
                              title: Text(
                              registeredUsername,
                              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),), 
                              subtitle: Text("Student", style: TextStyle(color: Colors.white),),
                              ),
                        ),
                        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/');}, child: const Icon(Ionicons.log_out_outline),
                                style:ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(58.0),
                                    )
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                                  iconColor: MaterialStatePropertyAll(theme().primaryColor)
                                )),
                        
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 50,), 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Column(
                          children:  [ 
                            Text(
                            "50",
                            style: TextStyle(color:Colors.white),
                          ),
                            Text(
                            "Reserved Seats",
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: theme().primaryColorDark),
                          ),
                          
                          ]
                        ), 
                        const SizedBox(width: 30,),
                        Column(
                          children:  [ 
                            Text(
                            "2",
                            style: TextStyle(color:Colors.white),
                          ),
                            Text(
                            "Lost Seat",
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: theme().primaryColorDark),
                          ),
                          
                          ]
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [ 
                            Text(
                            "10",
                            style: TextStyle(color:Colors.white),
                            ),
                            Text(
                            "Hours Spent",
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: theme().primaryColorDark),
                          ),
                          
                          ]
                        ),
                        
                      ]),
                    ),
                    
                    const SizedBox(height: 42.4,),
                    
                    Stack(
                      children: [
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          height: 110,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20, bottom:1, left: 40, right: 25),
                          decoration: BoxDecoration (
                          color: theme().primaryColorDark,
                          borderRadius: BorderRadius.circular(30.0),
                          ), 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Reserve", style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                              Text("Book a spot in the library now!", style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Colors.white, fontWeight: FontWeight.normal),),
                              const SizedBox(width: 30,),
                              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/homepage');}, child: const Icon(Ionicons.arrow_forward_outline),
                              style:ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(58.0),
                                  )
                                ),
                                backgroundColor: MaterialStatePropertyAll(Colors.white),
                                iconColor: MaterialStatePropertyAll(theme().primaryColor)
                              ))
                              ],)
                            ],
                          ),
                        )),
                      
                                
                            
        ])]),
                    ),

                    
       )]));
                  
          

}}
// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/database.dart';
import '../Cons/themes.dart';
import '../Cons/names.dart';
import 'package:ionicons/ionicons.dart';
import 'package:projects/database.dart';


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
       backgroundColor: theme().primaryColor,
       body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          const SizedBox(height: 300),
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
                              leading:  CircleAvatar(
                                  backgroundColor: theme().primaryColorDark,
                                  backgroundImage: defaultImage.image,
                                ),
                              
                              title: Text(
                              registeredUsername,
                              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                              subtitle: Text( "$registeredfName $registeredlName, $profileLabel", style: TextStyle(color: Colors.white),),
                              ),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){Navigator.pushNamed(context, '/settings');}, icon: const Icon(Ionicons.settings_outline), color: Colors.white,),
                            const SizedBox(width: 10,),
                            IconButton(onPressed: () async { await auth.signOut(); Navigator.pushNamed(context, '/start');}, icon: const Icon(Ionicons.log_out_outline), color: Colors.white,),
                          ],
                        )

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

                    const SizedBox(height: 35,),

                    Stack(
                      children: [
                        Padding(
                        padding: const EdgeInsets.symmetric( vertical: 0),
                        child: Container(
                          height: 210,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20, bottom:10, left: 40, right: 25),
                          decoration: BoxDecoration (
                          color: theme().primaryColorDark,
                          borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.schedule, color: Colors.white),
                                  const SizedBox(width: 10,),
                                  Text("Reserve", style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                              Text("Book a spot in the library now!", style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Colors.white, fontWeight: FontWeight.normal),),
                              const SizedBox(width: 57,),
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
                        Padding(
                        padding: const EdgeInsets.only(top: 105, bottom:0),
                        child: Container(
                          height: 110,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20, bottom:0, left: 40, right: 25),
                          decoration: BoxDecoration (
                          color: theme().primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  const Icon(Icons.check,color: Colors.white,),
                                  const SizedBox(width: 10,),
                                  Text("To Do List", style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                              Text("Create new tasks now!", style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Colors.white, fontWeight: FontWeight.normal),),
                              const SizedBox(width: 110,),
                              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/todo');}, child: const Icon(Ionicons.arrow_forward_outline),
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
                        Padding(
                        padding: const EdgeInsets.only(top: 215, bottom:0),
                        child: Container(
                          height: 110,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20, bottom:0, left: 40, right: 25),
                          decoration: BoxDecoration (
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  const Icon(Icons.calendar_month_outlined,color: Colors.white,),
                                  const SizedBox(width: 10,),
                                  Text("Reminders", style: Theme.of(context).textTheme.headline5?.copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                              Text("Set new reminders for yourself", style: Theme.of(context).textTheme.bodyText1?.copyWith(color:Colors.white, fontWeight: FontWeight.normal),),
                              const SizedBox(width: 60,),
                              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/reminders');}, child: const Icon(Ionicons.arrow_forward_outline),
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
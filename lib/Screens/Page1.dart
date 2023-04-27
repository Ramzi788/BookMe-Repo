import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 1000,
            color: Colors.black,
            child: Center(
              child: ListView(
              
                children: [
                  Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_eIXuIz.json',
              height: 300
              ),
              const SizedBox(height: 25),
              Text("Reserve Seats in Jaffet", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 30 ),),
              const SizedBox(height: 20),
              Text("Study in Silent Zone with ease", textAlign: TextAlign.center,style: TextStyle(color: Colors.grey, fontWeight:FontWeight.bold, fontSize: 15 ),)
                ]
              ),
            )
          ),
        ),
      ),
    );
  }
}
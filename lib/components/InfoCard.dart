import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/todo');
            },
            child: Container(
                height: 100, 
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 36, 35, 35),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const  [
                      CircleAvatar(backgroundColor: Colors.red, radius: 20, child: Icon(Icons.check, color: Colors.white, size: 30,),),
                      SizedBox(width: 10,),
                      Center(child: Text("To Do List", style: TextStyle(color: Colors.white, fontSize: 20),)),
                    ],
                  ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/reminders');
            },
            child: Container(
                height: 100, 
                width: 200,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 36, 35, 35),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(backgroundColor: Colors.orange, radius: 20, child: Icon(Icons.list, color: Colors.white, size: 30,),),
                      SizedBox(width: 10,),
                      Center(child: Text("Reminders", style: TextStyle(color: Colors.white, fontSize: 20),)),
                    ],
                  ),
                ),
            ),
          ),
        ),
        
      ],
    );
  }
}
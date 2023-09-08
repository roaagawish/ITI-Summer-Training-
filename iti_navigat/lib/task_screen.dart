import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tasks to do : " , style: TextStyle(fontSize: 40 ),),
            SizedBox(height: 30,),
            Text("Task 1 : " , style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 10,),
            Text("Task 2 : " , style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 10,),
            Text("Task 3 : " , style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 10,),
            Text("Task 4 : " , style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 10,),
            Text("Task 5 : " , style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

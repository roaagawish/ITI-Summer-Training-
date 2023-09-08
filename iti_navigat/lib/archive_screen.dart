import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Archived tasks : " , style: TextStyle(fontSize: 40 ),),
              SizedBox(height: 30,),
              Text("Archived Task 1 : " , style: TextStyle(fontSize: 25 ),),
              SizedBox(height: 10,),
              Text("Archived Task 2 : " , style: TextStyle(fontSize: 25 ),),
              SizedBox(height: 10,),
              Text("Archived Task 3 : " , style: TextStyle(fontSize: 25 ),),
              SizedBox(height: 10,),
              Text("Archived Task 4 : " , style: TextStyle(fontSize: 25 ),),
              SizedBox(height: 10,),
              Text("Archived Task 5 : " , style: TextStyle(fontSize: 25 ),),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
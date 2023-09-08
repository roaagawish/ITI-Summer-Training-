import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  bool? isMale ;
  int? height ;
  int? weight;
  int? age ;
  double? result;

  ResultScreen({
    super.key,
    required this.result ,
    required this.height ,
    required this.weight ,
    required this.age ,
    required this.isMale
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(" Your Results are : " ,
              style: TextStyle( fontSize: 40,fontWeight: FontWeight.bold , color: Colors.black),),
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child:
                 Text(" Gender :  ${ isMale! ? "Male" : "Female"}" , style: TextStyle(fontSize: 20 ),),
              ),
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child:
              Text(" Height : $height " , style: TextStyle(fontSize: 20 ),),
            ),
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child:
              Text(" Weight : $weight " , style: TextStyle(fontSize: 20 ),),
            ),
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child:
              Text(" Age : $age " , style: TextStyle(fontSize: 20 ),),
            ),
            Container(padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child:
              Text(" BMI : ${result?.round()} " , style: TextStyle(fontSize: 20 ),),
            ),
          ],
        ),
      ),
    );
  }
}

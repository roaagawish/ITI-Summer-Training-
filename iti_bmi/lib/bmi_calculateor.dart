import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int height = 170;
  int weight = 65;
  int age = 25;
  var result ;
  bool? isMale = true ;
   Color? male = Colors.green[100];
   Color? female = Colors.green[100];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:  () {
                         setState(() {
                           isMale = true ;
                           male = Colors.blueAccent ;
                           female = Colors.green[100];
                         });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: male ,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: const [
                          Icon(Icons.male, size: 100, color: Colors.black54,),
                          SizedBox(height: 10,),
                          Text("Male",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap:  () {
                     setState(() {
                       isMale = false;
                       female = Colors.pinkAccent;
                       male = Colors.green[100];
                     });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: female,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: const [
                          Icon(Icons.female, size: 100, color: Colors.black54,),
                          SizedBox(height: 10,),
                          Text("Female",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: const TextStyle(color: Colors.black, fontSize: 35,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      const Text("cm", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Slider(
                      value: height.toDouble() ,
                      min: 50,
                      max: 300 ,
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt() ;
                        }); }
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children:  [
                        const Text(
                          "Weight",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text( "$weight",
                              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            SizedBox(width: 5,),
                            Text("kg", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "weight-",
                                backgroundColor: Colors.grey,
                                child:  const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(width: 5),
                            FloatingActionButton(
                                heroTag: "weight+",
                                backgroundColor: Colors.grey,
                                child:  const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children:  [ const Text(
                        "Age",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                        SizedBox(height: 10),
                        Text(
                          "$age",
                          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                heroTag: "age-",
                                backgroundColor: Colors.grey,
                                child:  const Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(width: 5),
                            FloatingActionButton(
                                heroTag: "age+",
                                backgroundColor: Colors.grey,
                                child:  const Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                })

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(50),
               color: Colors.green[200],
             ),
             padding: EdgeInsets.all(5),
             child: MaterialButton(
                 child: Text("Calculate" ,
                   style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                 onPressed: () {
                    result   = weight / pow(height/100, 2);
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
                       isMale: isMale ,
                       height: height,
                       age: age,
                       result: result ,
                       weight: weight ,
                     )),
                     );
                     print(result);
                   });
                 }),
           )
          ],
        ),
      ),
    );
  }
}

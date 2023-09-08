import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String title = "Blue Appbar";
  Color color =  Colors.blue ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color ,
        leading: Icon(Icons.menu),
        title: Text("$title"),
        actions: [
          IconButton(onPressed: () {
            setState(() {
          title = "Blue Appbar" ;
          color = Colors.blue ;
            });
          }, icon: Icon(Icons.format_color_fill),
             color: Colors.blue,),
          IconButton(onPressed: () {
            setState(() {
              title = "Green Appbar" ;
              color = Colors.teal ;
            });
          }, icon: Icon(Icons.format_color_fill),
            color: Colors.teal,),
          IconButton(onPressed: () {
            setState(() {
              title = "Pink Appbar" ;
              color = Colors.pinkAccent ;
            });
          }, icon: Icon(Icons.format_color_fill),
            color: Colors.pinkAccent,)
        ],
      ),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container (
                decoration: BoxDecoration( color: Colors.orange),
                child: Text("Group 1",style : TextStyle(fontSize: 30)),
              ),
              Container (

                decoration: BoxDecoration( color: Colors.green),
                child: Text("Group 2",style : TextStyle(fontSize: 30)),
              ),
              Container (
                decoration: BoxDecoration( color: Colors.purple),
                child: Text("Group 3",style : TextStyle(fontSize: 30)),
              ),
              Container (
                decoration: BoxDecoration( color: Colors.amber),
                child: Text("Group 4",style : TextStyle(fontSize: 30)),
              ),
            ],
          ),
      ),
    );
  }
}

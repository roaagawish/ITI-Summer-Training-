import 'package:flutter/material.dart';
import 'package:untitled1/archive_screen.dart';
import 'package:untitled1/task_screen.dart';
import 'done_screen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentindex = 0;

  List<Widget> screens = [Task(), Done() , Archive()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("To Do List",style: TextStyle(color: Colors.teal),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex ,
        onTap: (index) {
          setState(() {
            currentindex = index ;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list_rounded),label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.done_outline_rounded),label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.archive_rounded),label: "Archived"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  Profile({
    required this.email ,
    required this.id ,
    required this.password});

  String email;

  String password;

  String id;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Here Is Your Informations :",
                  style: TextStyle(color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: [
                      Text("Email : $email",
                        style: TextStyle(color: Colors.white, fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Password : $password",
                        style: TextStyle(color: Colors.white, fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("User id : $id",
                        style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}

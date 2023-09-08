import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iti_login_screen/profileScreen.dart';
import 'package:iti_login_screen/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool visibal = true;
  var formerKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form (
          key : formerKey,
          child: SingleChildScrollView(
            child: Column (
              children: [
                SizedBox(height: 40),
                Text("Login", style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                TextFormField(
                  controller: emailController ,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                   if (value!.isEmpty)  {
                     return "Email address must not be empty";
                   } else if (!value.contains('@')) {
                     return "Unveiled email address , must contains @ symbol";
                   }
                   return null ;
                  },
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController ,
                  obscureText: visibal,
                  obscuringCharacter: "*",
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Password must not be empty";
                    } else if (value.length < 6) {
                      return "Password is too short" ;
                    }
                    return null ;
                  },
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    prefixIcon: Icon(Icons.lock_open),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        visibal = !visibal;
                      });
                    } , icon: visibal ?  Icon(Icons.visibility) : Icon(Icons.visibility_off) )
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blue ),
                    child: MaterialButton(onPressed:  () async {
                        if (formerKey.currentState!.validate())  {
                          print(emailController.text);
                          print(passwordController.text);
                          //await ApiProvider().userLogin(email: emailController.text, password: passwordController.text);
                       FirebaseAuth.instance.signInWithEmailAndPassword(
                           email: emailController.text,
                           password: passwordController.text)
                          .then((value) {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => Profile(
                             email: emailController.text ,
                             password:passwordController.text ,
                             id: value.user!.uid ,
                           )),
                         );
                            print(value.user!.email);
                            print(value.user!.uid);
                       }).catchError((error) {
                         print(error.toString());
                       });
                        }
                    } ,
                    child:Text ("Login" , style: TextStyle(color: Colors.white,fontSize: 20)),),
                  ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?") ,
                    TextButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                    }, child: Text("Register Now"))
                  ],
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}


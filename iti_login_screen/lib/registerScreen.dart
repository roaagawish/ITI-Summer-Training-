import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iti_login_screen/profileScreen.dart';
import 'loginScreen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool visible = true;
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
                const SizedBox(height: 40),
                const Text("Register", style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),
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
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController ,
                  obscureText: visible,
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
                      border: const OutlineInputBorder(),
                      labelText: "password",
                      prefixIcon: const Icon(Icons.lock_open),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      } , icon: visible ?  const Icon(Icons.visibility) : const Icon(Icons.visibility_off) )
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue ),
                  child: MaterialButton(onPressed:  () async {
                    if (formerKey.currentState!.validate())  {
                      print(emailController.text);
                      print(passwordController.text);
                     await FirebaseAuth.instance.createUserWithEmailAndPassword(
                         email: emailController.text,
                         password: passwordController.text
                     ).then((value) {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Profile(
                           email: emailController.text ,
                           password:passwordController.text ,
                           id: value.user!.uid ,
                         )),);
                       print(value.user!.email);
                       print(value.user!.uid);
                     }).catchError((error) {
                       print(error.toString());
                     });
                    }} ,
                    child:const Text ("Register" , style: TextStyle(color: Colors.white,fontSize: 20)),),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?") ,
                    TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    }, child: const Text("Login"))
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

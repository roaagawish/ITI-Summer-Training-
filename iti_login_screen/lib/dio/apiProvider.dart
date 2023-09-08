
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {

  userLogin({required String email , required String password}) async {
   FormData formData = FormData.fromMap({
     "email" : email,
     "password" : password,
   });

  Response response = await Dio().post("http://159.89.4.181:2000/api/v1/auth/email/signin", data:  formData );

 // print(response.data);
  print(response.data["model"]["tokens"]["accessToken"]);


   final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('token', response.data["model"]["tokens"]["accessToken"]);

    String? token = prefs.getString("token");

    print("accessToken : $token");

  }
}
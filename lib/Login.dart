import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_practice/management/login_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginController loginController=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: loginController.emailController.value,
            decoration: InputDecoration(
              hintText: "Email",
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller: loginController.passwordController.value,
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              loginController.login();
            },
            child: Container(
              height: 50,
              width: 300,
              color: Colors.grey,
              child: Obx(()=>Center(
                child: loginController.loading.value==true?
                CircularProgressIndicator():
                Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
              ))
          ))
        ],
      ),
    );
  }
}

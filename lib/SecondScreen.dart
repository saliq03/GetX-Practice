import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Secondscreen extends StatefulWidget {

 var name;

  Secondscreen({this.name});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen "+Get.arguments[0]),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
            Get.back();
            Get.back();

            }, child: Text("Go to previous Screen Screen "+Get.arguments[1])),
      ),
    );
  }
}

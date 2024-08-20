import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SecondScreen.dart';
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
             // Get.to(Secondscreen(name: 'Saliq',));
              Get.toNamed('/screeenSecond',arguments: [
                'saliq',
                'developer'
              ]);
            }, child: Text("Go to Next Screen")),
      ),
    );
  }
}

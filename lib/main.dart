import 'package:flutter/material.dart';
import 'package:getx_practice/FirstScreen.dart';
import 'package:getx_practice/Home.dart';
import 'package:get/get.dart';
import 'package:getx_practice/SecondScreen.dart';
import 'package:getx_practice/size_and_languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Practice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SizeAndLanguages(),
      getPages: [
        GetPage(name:'/screeen', page: ()=>Home()),
        GetPage(name:'/screeenfirst', page: ()=>Firstscreen()),
        GetPage(name:'/screeenSecond', page: ()=>Secondscreen()),
      ],
    );
  }
}



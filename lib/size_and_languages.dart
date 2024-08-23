import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SizeAndLanguages extends StatefulWidget {
  const SizeAndLanguages({super.key});

  @override
  State<SizeAndLanguages> createState() => _SizeAndLanguagesState();
}

class _SizeAndLanguagesState extends State<SizeAndLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Size and languages"),
    ),
      body: Container(
        color: Colors.pinkAccent,
        height: Get.height*.3,
        width: Get.width*1,
        child: Column(
          children: [
            Text('message'.tr,style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_practice/management/ImageController.dart';

class SelectImage extends StatefulWidget{
  @override
  State<SelectImage> createState()=> _SelectImageState();
}
class _SelectImageState extends State<SelectImage> {
  ImageController imageController=Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx((){
          return CircleAvatar(
            backgroundImage: imageController.imagePath.isNotEmpty? FileImage(File(imageController.imagePath.value)):
            null,
          );
        })
      ),
    );
  }

}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import 'management/counter_controller.dart';


class StateManagement extends StatefulWidget{
  State<StateManagement> createState()=>_StateManagementState();
  }

  class _StateManagementState extends State<StateManagement>{
   final countercontroller controller= Get.put(countercontroller());
  int counter=0;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Center(
        child: Container(
          child: Obx((){
            return Text(controller.counter.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),);
          })
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
      controller.IncrementCounter();
      },child: Icon(Icons.add,color: Colors.red,),),
    );
  }

  }
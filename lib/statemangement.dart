

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_practice/management/fruits_controller.dart';


import 'management/counter_controller.dart';


class StateManagement extends StatefulWidget{
  State<StateManagement> createState()=>_StateManagementState();
  }

  class _StateManagementState extends State<StateManagement>{
   final countercontroller controller= Get.put(countercontroller());
  int counter=0;

  final FruitsController fruitsController=Get.put(FruitsController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: fruitsController.fruits.length,
                itemBuilder: (context,index){
                  return Card(
                    child: ListTile(
                      onTap: (){
                      if(fruitsController.favFruits.contains(fruitsController.fruits[index])){
                        fruitsController.RemovefromFavourite(fruitsController.fruits[index]);
                      }
                      else{
                        fruitsController.AddtoFavourite(fruitsController.fruits[index]);
                      }
                      },
                      leading: Text(fruitsController.fruits[index],style: TextStyle(fontSize: 30),),
                     trailing: Obx(()=>Icon(Icons.favorite,color: fruitsController.favFruits.contains(fruitsController.fruits[index])? Colors.red:Colors.white,))
                    ),
                  );
                }),
          ),

          Obx(()=>Container(height: 200,width: 200,color: Colors.red.withOpacity(fruitsController.opacity.value),)),
          Obx(()=>Slider(value: fruitsController.opacity.value, onChanged: (value){
    fruitsController.changeOpacity(value);
    })),
          SizedBox(height: 30,)
        ],
      )

      // Center(
      //   child: Container(
      //     child: Obx((){
      //       return Text(controller.counter.value.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),);
      //     })
      //   ),
      // ),

      // floatingActionButton: FloatingActionButton(onPressed: (){
      // controller.IncrementCounter();
      // },child: Icon(Icons.add,color: Colors.red,),),
    );
  }

  }
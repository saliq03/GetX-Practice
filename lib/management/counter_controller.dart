import 'package:get/get.dart';

class countercontroller extends GetxController{
  RxInt counter=0.obs;

  IncrementCounter(){
    counter.value++;
  }
}
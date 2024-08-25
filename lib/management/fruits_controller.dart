import 'package:get/get.dart';

class FruitsController extends GetxController{
  RxList<String> fruits=["Orange","Mango","Banana","Apple","Dragon fruit"].obs;
  RxList<dynamic> favFruits=[].obs;


  RxDouble  opacity=.4.obs;
  changeOpacity(double value){
    opacity.value=value;
  }
  AddtoFavourite(String fruit){
    favFruits.add(fruit);
  }

  RemovefromFavourite(String fruit){
    favFruits.remove(fruit);
  }
}
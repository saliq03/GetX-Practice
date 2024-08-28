import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController{
  RxString imagePath=''.obs;
  PickImage() async {
   final image= await ImagePicker().pickImage(source: ImageSource.gallery);
   if(image!=null){
     imagePath.value=image.path.toString();
   }
  }
}
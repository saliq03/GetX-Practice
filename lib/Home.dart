import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/FirstScreen.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("GetX practice"),
       centerTitle: true,
     ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Get.snackbar(
                  "Practice",
                  "getX snackbar practice",
              backgroundColor: Colors.redAccent,
              icon: Icon(Icons.notification_add),
              duration: Duration(seconds: 2),
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP,
              mainButton: TextButton(onPressed: (){}, child: Text("button")));
            }, child: Text("Press")),
            ElevatedButton(onPressed: (){
              ChangeTheme();
            }, child: Text("Change theme")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstscreen()));
            }, child: Text("Go to first screen"))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.defaultDialog(
          title: "Add",
          titleStyle: TextStyle(color: Colors.redAccent),
          // middleText: "Are you sure to add ",
          content: Column(
            children: [
              Text("hii wts up"),
              Text("hii wts up"),
              ElevatedButton(onPressed: (){}, child: Text("button")),
              Text("hii wts up"),
            ],
          ),

          contentPadding: EdgeInsets.only(left: 20,right: 20),
          // backgroundColor: Colors.blue,
          // textConfirm: "Yes",
          // textCancel: "No",
          confirm: TextButton(onPressed: (){
            // Navigator.pop(context);
            Get.back();
          }, child: Text("Yes")),
          cancel: TextButton(onPressed: (){}, child: Text("No")),

        );
      }),
    );
  }
  ChangeTheme(){
   return Get.bottomSheet(
     Container(
       color: Colors.deepPurple,
     child: Column(
       children: [
         ListTile(leading: Icon(Icons.light_mode),
           title: Text("Ligh theme"),
         onTap: (){
           Get.changeTheme(ThemeData.light());
           Get.back();
         },),
         ListTile(leading: Icon(Icons.dark_mode),
           title: Text("Dark theme",),
           onTap: (){
           Get.changeTheme(ThemeData.dark());
           Get.back();
           },)
       ],
     ),
     )
   );
  }
}

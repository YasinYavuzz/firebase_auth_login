import 'package:firebase_baglama/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      appBar: AppBar(elevation: 0,toolbarHeight: 50,backgroundColor: Color(0xffECECEC),),
      //drawer: DrawerTheme(data: DrawerThemeData.lerp(a, b, t), child: Drawer()),
      drawer: const Drawer(

        width: 250,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
          borderSide: BorderSide(color: Colors.blue)
        ),
        semanticLabel: "asddfsdfa",
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      
    );
  }
}
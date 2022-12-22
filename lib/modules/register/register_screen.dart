import 'package:firebase_baglama/modules/login/login_screen.dart';
import 'package:firebase_baglama/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom > 0 ? 20.h : 0),
          height: 70.h,
          width: 85.w,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 5.h),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w, bottom: 2.h),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 2.5.h, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                TextFormField(
                  onChanged: (value) => controller.email = value,
                  cursorColor: Colors.black,
                  cursorHeight: 3.h,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 231, 231),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 0.5.w)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black54,
                      size: 4.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w, bottom: 2.h, top: 2.h),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: 2.5.h, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Obx(() => 
                TextFormField(
                  onChanged: (value) => controller.password = value,
                  cursorColor: Colors.black,
                  cursorHeight: 3.h,
                  obscureText: controller.passwordVisibility.value,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 231, 231),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 0.5.w)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black54,
                      size: 4.h,
                    ),
                    suffixIcon: 
                    IconButton(
                      onPressed: () {
                        controller.chancePasswordVisibility();
                      },
                      icon: Icon(controller.chanceVisibilityIcon(), color: Colors.black45,)
                       
                    ),
                  ),
                ),),
                SizedBox(
                  height: 15.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.auth.createUser(controller.email, controller.password).then((value) =>Get.to(() => LoginScreen(),
                        transition: Transition.rightToLeftWithFade));
                    
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 2.h),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(80.w, 5.h),
                      backgroundColor: Colors.greenAccent.withOpacity(0.5),
                      side: BorderSide(
                          color: Colors.white,
                          width: 0.5.w,
                          style: BorderStyle.none)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
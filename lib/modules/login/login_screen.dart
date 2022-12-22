import 'package:firebase_baglama/modules/login/login_controller.dart';
import 'package:firebase_baglama/shared/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/app_pages.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 170, 169, 245),
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
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
                  onChanged: (value) {
                      controller.email = value;
                    },
                  //onEditingComplete: () => controller.email,
                  //controller: controller.controller,
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
                        borderSide: BorderSide(
                          width: 0.5.w,
                        )),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black54,
                      size: 4.h,
                    ),
                  ),
                  /* autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    if (!GetUtils.isEmail(value!)) {
                      return "Email isn't valid";
                    } else {
                      return null;
                    }
                  }, */
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
                Obx(
                  () => TextFormField(
                    onChanged: (value) {
                      controller.password = value;
                    },
                    //onEditingComplete: () => controller.password,
                    //controller: controller.controller2,
                    cursorColor: Colors.black,
                    cursorHeight: 3.h,
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: controller.loginpasswordVisibility.value,
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
                      suffixIcon: IconButton(onPressed: () {
                        controller.loginPasswordVisibility();
                      }, icon: Icon(controller.loginVisibilityIcon(), color: Colors.black45,))
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.auth.sigInUser(controller.email, controller.password);
                  },
                  child: Text(
                    "Sign in",
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
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "or continue with",
                  style: TextStyle(fontSize: 2.h),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/google.png"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(22.w, 5.h),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                              color: Colors.white,
                              width: 0.5.w,
                              style: BorderStyle.none)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/github.png"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(22.w, 5.h),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                              color: Colors.white,
                              width: 0.5.w,
                              style: BorderStyle.none)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/facebook.png"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          minimumSize: Size(22.w, 5.h),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                              color: Colors.white,
                              width: 0.5.w,
                              style: BorderStyle.none)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 2.h),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.5.h,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.solid),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
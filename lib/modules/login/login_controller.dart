import 'package:firebase_baglama/shared/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var loginpasswordVisibility = true.obs;
  
  AuthService auth = AuthService();
  String email = "";
  String password = "";

  loginPasswordVisibility(){
    loginpasswordVisibility.value = !loginpasswordVisibility.value;
  }

  loginVisibilityIcon(){
    if (loginpasswordVisibility == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }

  
}
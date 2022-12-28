import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_baglama/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    //createUser();
    return this;
  }

  createUser(email, password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        //print('The password provided is too weak.');
        return Get.defaultDialog(title: 'şifre 6 karakterde kısa olamaz');
      } else if (e.code == 'email-already-in-use') {
        //print('The account already exists for that email.');
        return Get.defaultDialog(title: 'böyle bir kullanıcı mevcut');
      }
    } catch (e) {
      print(e);
    }
  }

  sigInUser(email, password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value) => Get.offAndToNamed(Routes.HOME,result: Get.snackbar('Giriş Başarılı', email)));
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        //print('No user found for that email.');
        return Get.defaultDialog(title: 'Böyle bir kullanıcı bulunamadı');
      } else if (e.code == 'wrong-password') {
        //print('Wrong password provided for that user.');
        return Get.defaultDialog(title: 'Hatalı şifre');
      }
    }
  }



}

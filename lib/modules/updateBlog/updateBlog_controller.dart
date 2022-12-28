import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_controller.dart';
import '../home/home_model.dart';

class UpdateBlogController extends GetxController {
  //HomeController find = Get.find();
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService firestore = FireStoreService();
  TextEditingController baslik = TextEditingController();
  TextEditingController icerik = TextEditingController();
  String document_id = "";
  
  //RxString baslik
  
  Map<String, dynamic> data = {};

  void blogGuncelle(baslik, icerik) async{
    data.addAll({'baslik': baslik, 'icerik': icerik, 'kullanici_adi' : 'Yasin'});
    await db.collection('Users').doc('${document_id}').update(data);
    Get.back();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateBlogController extends GetxController{
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService firestore = FireStoreService();
  TextEditingController baslik = TextEditingController();
  TextEditingController icerik = TextEditingController();
  
  //RxString baslik
  
  Map<String, dynamic> data = {};

  void blogKaydet(baslik, icerik){
    data.addAll({'baslik': baslik, 'icerik': icerik, 'kullanici_adi' : 'Yasin'});
    firestore.saveBlog(db, data);
  }

}
import 'package:cloud_firestore/cloud_firestore.dart';

class BlogModel{
  String? baslik;
  String? icerik;
  Timestamp? olusturulma_tarihi;

  BlogModel({this.baslik,this.icerik,this.olusturulma_tarihi});
  
  BlogModel.fromJson(Map<String, dynamic> json) {
    baslik = json['baslik'];
    icerik = json['icerik'];
    olusturulma_tarihi = json['olusturulma_tarihi'];
  }

}
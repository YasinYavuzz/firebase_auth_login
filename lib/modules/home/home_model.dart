import 'package:cloud_firestore/cloud_firestore.dart';

class BlogModel {
  String? baslik;
  String? icerik;
  String? kullanici_adi;
  

  BlogModel({this.baslik, this.icerik, this.kullanici_adi});

  BlogModel.fromJson(Map<String, dynamic> json) {
    baslik = json['baslik'];
    icerik = json['icerik'];
    kullanici_adi = json['kullanici_adi'];
  }
}



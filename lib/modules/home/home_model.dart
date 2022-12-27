import 'package:cloud_firestore/cloud_firestore.dart';

class BlogModel {
  String? document_id;
  String? baslik;
  String? icerik;
  String? kullanici_adi;
  

  BlogModel({this.document_id,this.baslik, this.icerik, this.kullanici_adi});

  BlogModel.fromJson(Map<String, dynamic> json) {
    document_id = json['document_id'];
    baslik = json['baslik'];
    icerik = json['icerik'];
    kullanici_adi = json['kullanici_adi'];
  }
}



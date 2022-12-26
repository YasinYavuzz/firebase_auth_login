
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService firestore = FireStoreService();

  DocumentSnapshot? usersData; // kullanıcı verileri
  DocumentSnapshot? blogData; // blog verileri

  // blog bilgileri
  RxString baslik = "".obs;
  RxString icerik = "".obs;
  // Kullanıcı bilgileri
  RxString kullanici_adi = "".obs;
 @override
  void onInit() async{
    blogData = await firestore.readBlog(db);
    usersData = await firestore.getUsers(db);
    baslik.value = blogData!['baslik'];
    icerik.value = blogData!['icerik'];
    kullanici_adi.value = usersData!['kullanici_adi'];
    // print(baslik);
    super.onInit();
  }
  // getStatus(){
  //   firestore.getStatus(db);
  // }

    
}



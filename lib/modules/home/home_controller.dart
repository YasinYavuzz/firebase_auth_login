
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/modules/home/home_model.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService firestore = FireStoreService();

  // // DocumentSnapshot? usersData; // kullanıcı verileri
  // DocumentSnapshot? blogData; // blog verileri

  RxList<BlogModel> blogs = RxList<BlogModel>([]);

 @override
  void onInit(){
    // blogData = await firestore.readBlog(db);
    // usersData = await firestore.getUsers(db);
    // baslik.value = blogData!['baslik'];
    // icerik.value = blogData!['icerik'];
    // kullanici_adi.value = blogData!['kullanici_adi'];
    // print(baslik);
    blogs.bindStream(firestore.readBlog(db));
    super.onInit();
  }
  // getStatus(){
  //   firestore.getStatus(db);
  // }
}

// Collection Reference 




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/modules/home/home_model.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  //HomeController controller = HomeController();
  FirebaseFirestore db = FirebaseFirestore.instance;
  FireStoreService firestore = FireStoreService();

  RxString baslik = "".obs;
  RxString icerik = "".obs;
  //Timestamp? olusturulma_tarihi;

  //BlogModel model = BlogModel();
 @override
  void onInit() {
    firestore.readBlog(db);
    print(baslik);
    super.onInit();
  }
}
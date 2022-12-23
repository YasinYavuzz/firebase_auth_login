import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/modules/home/home_controller.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
  Future<FireStoreService> init() async {
    return this;
  }

  readBlog(FirebaseFirestore db) async {
      HomeController controller = HomeController();
      DocumentSnapshot users = await db.collection('Users').doc('Yasin').collection('Yazilarim').doc('yazilar').get();
      controller.baslik.value = users['baslik'];
      controller.icerik.value = users['icerik'];
      //print(controller.baslik);
      print(controller.icerik);
      
  }


}

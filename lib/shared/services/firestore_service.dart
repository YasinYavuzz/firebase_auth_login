import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/modules/home/home_model.dart';
import 'package:get/get.dart';

class FireStoreService extends GetxService {
  Future<FireStoreService> init() async {
    return this;
  }

  Stream<List<BlogModel>> readBlog(FirebaseFirestore db) {
    // HomeController controller = HomeController();
    var blogs = db.collection('Users').snapshots().map((query) => query.docs
        .map((item) =>
            BlogModel.fromJson({"document_id": item.id, ...item.data()}))
        .toList());
    return blogs;
    //return users;
    // controller.baslik.value = users['baslik'];
    // controller.icerik.value = users['icerik'];
    // print(controller.baslik);
    // print(controller.icerik);
  }

  saveBlog(FirebaseFirestore db, Map<String, dynamic> data) {
    db.collection('Users').add(data);
  }

  updateBlog(FirebaseFirestore db, Map<String, dynamic> data, String document_id) async{
    await db.collection('Users').doc('${document_id}').update(data);
  }

  // Future<DocumentSnapshot> getUsers(FirebaseFirestore db) async {
  //   DocumentSnapshot users = await db.collection('Users').doc('Yasin').get();
  //   return users;
  // }
  // // verileri gösterme
  // // verileri anlık olarak ekranda görmek istiyorsak veritabanındaki değişikliklere göre verilerimizi ekranda görmek
  // // istiyorsak stream kullanmamız gerekiyor.
  // Stream<QuerySnapshot> getStatus(FirebaseFirestore db) {
  //   var ref = db.collection("Users").snapshots();
  //   return ref;
  // }
}

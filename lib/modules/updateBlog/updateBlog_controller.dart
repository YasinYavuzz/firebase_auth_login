import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class UpdateBlogController extends GetxController {

  FirebaseFirestore db = FirebaseFirestore.instance;
  // FireStoreService firestore = FireStoreService();

  String document_id = "";
  String baslik = "";
  String icerik = "";

  

  void update_blog() async{
    var ref = await db.collection('Users').doc('${document_id}').get();
    baslik = ref['baslik'];
    print(baslik);
    icerik = ref['icerik'];
    print(icerik);
  }


  @override
  void onInit() async{
    document_id = await Get.parameters["document_id"]!;
    print(document_id);
    var ref = await db.collection('Users').doc('${document_id}').get();
    baslik = ref['baslik'];
    print(baslik);
    icerik = ref['icerik'];
    print(icerik);
    //print(baslik.value);
    //print(icerik);
    super.onInit();
  }
}

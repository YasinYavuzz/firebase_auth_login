import 'package:firebase_baglama/shared/services/analytics_service.dart';
import 'package:firebase_baglama/shared/services/auth_service.dart';
import 'package:firebase_baglama/shared/services/firebase_service.dart';
import 'package:firebase_baglama/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class DependencyInjection{
  static init() async{
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => FireStoreService().init());
    await Get.putAsync(() => AnalyticsService().init());
  }
}
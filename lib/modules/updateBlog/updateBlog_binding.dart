import 'package:firebase_baglama/modules/updateBlog/updateBlog_controller.dart';
import 'package:get/get.dart';

class UpdateBlogBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(UpdateBlogController());
  }

}
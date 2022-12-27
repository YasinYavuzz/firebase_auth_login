import 'package:firebase_baglama/modules/createBlog/createBlog_controller.dart';
import 'package:get/get.dart';

class CreateBlogBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CreateBlogController());
  }

}
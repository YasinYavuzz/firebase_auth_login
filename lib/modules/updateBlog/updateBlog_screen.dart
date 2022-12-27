import 'package:firebase_baglama/modules/updateBlog/updateBlog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateBlogScreen extends GetView<UpdateBlogController> {
  const UpdateBlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffECECEC),
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30,
            )),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffECECEC),
      body: Column(
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 100,
              // color: Colors.red,
              child: const Text(
                'BLOG GUNCELLE',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            //alignment: Alignment.centerLeft,
            width: 300,
            height: 470,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 100,
                  height: 30,
                  // color: Colors.grey,
                  child: const Text(
                    'BASLIK',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: TextFormField(
                            initialValue: controller.baslik,
                            style: const TextStyle(
                                letterSpacing: 1,
                                wordSpacing: 1,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            //controller: controller.baslik,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 30,
                  // color: Colors.grey,
                  child: const Text(
                    'ICERIK',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                          initialValue: controller.icerik,
                          //controller: controller.icerik,
                          style: const TextStyle(
                              letterSpacing: 1,
                              wordSpacing: 1,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration:
                              const InputDecoration(
                                
                                border: InputBorder.none),
                        ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              //controller.blogKaydet(controller.baslik.text,controller.icerik.text);
            },
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Blog Güncelle',
                style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )),
            ),
          )
        ],
      ),
    );
  }
}

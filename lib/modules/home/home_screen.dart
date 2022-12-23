import 'package:firebase_baglama/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECECEC),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffECECEC),
        ),
        elevation: 0,
        toolbarHeight: 10,
        backgroundColor: const Color(0xffECECEC),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 330,
              height: 40,
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/ic_menu.png'),
                  Image.asset('assets/ic_notification.png'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 330,
            height: 50,
            //color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 250,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10, top: 12),
                            hintText: "Search",
                            suffixIcon: Icon(
                              Icons.search_sharp,
                              size: 25,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none),
                      ),
                    )),
                Container(
                  width: 72,
                  height: 46,
                  child:
                      Image.asset("assets/ic_filter.png", color: Colors.grey),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 330,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: const Text(
                    'Please Start Writing Better Git Commits',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  height: 40,
                  child: Row(
                    children: [
                      CircleAvatar(radius: 15,child: Image.network('https://www.pwshoponline.com/assets/images/avatars/avatar2_big@2x.png',)),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('Travis Aaron Wagner'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('-',style: TextStyle(color: Colors.grey),),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('Jul 29, 2022',style: TextStyle(color: Colors.grey),),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('-',style: TextStyle(color: Colors.grey),),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('16:00 pm',style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 120,
                  child: const Text(
                    'I recently read a helpful article on Hashnode by Simon Egersand titled "Write Git Commit Messages Your Colleagues Will Love," and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'Read More',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

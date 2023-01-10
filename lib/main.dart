import 'package:firebase_baglama/di.dart';
import 'package:firebase_baglama/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // home: const LoginScreen(),
        initialRoute: Routes.LOGIN,
        getPages: AppPages.routes,
        //showPerformanceOverlay: false,
      );
      },
    );
  }
}
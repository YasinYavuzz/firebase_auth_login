
import 'package:firebase_baglama/modules/createBlog/createBlog_binding.dart';
import 'package:firebase_baglama/modules/createBlog/createBlog_screen.dart';
import 'package:firebase_baglama/modules/home/home_binding.dart';
import 'package:firebase_baglama/modules/home/home_screen.dart';
import 'package:firebase_baglama/modules/login/login_binding.dart';
import 'package:firebase_baglama/modules/login/login_screen.dart';
import 'package:firebase_baglama/modules/register/register_binging.dart';
import 'package:firebase_baglama/modules/register/register_screen.dart';
import 'package:firebase_baglama/modules/updateBlog/updateBlog_binding.dart';
import 'package:firebase_baglama/modules/updateBlog/updateBlog_screen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
  //static const INITIAL_SPLASH = Routes.Splash;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.REGISTER,
        page: () => const RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.CREATEBLOG,
        page: () => const CreateBlogScreen(),
        binding: CreateBlogBinding()),
        GetPage(
        name: Routes.UPDATEBLOG,
        page: () => const UpdateBlogScreen(),
        binding: UpdateBlogBinding()),
    
  ];
}

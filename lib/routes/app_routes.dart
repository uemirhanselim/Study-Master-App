import 'package:firebase_master_class/view/splash/splash_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
    GetPage(name: "/", page: () => const SplashView())
  ];
}

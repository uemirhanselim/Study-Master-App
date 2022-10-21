import 'package:firebase_master_class/controllers/question_paper/question_paper_controller.dart';
import 'package:firebase_master_class/view/home/home_view.dart';
import 'package:firebase_master_class/view/introduction/introduction_view.dart';
import 'package:firebase_master_class/view/splash/splash_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashView()),
        GetPage(name: "/introduction", page: () => const IntroductionView()),
        GetPage(
            name: "/home",
            page: () => const HomeView(),
            binding: BindingsBuilder(
              () {
                Get.put(QuestionPaperController());
              },
            )),
      ];
}

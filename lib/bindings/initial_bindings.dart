import 'package:firebase_master_class/controllers/auth_contoller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    //? bir controllerı inject etmek için put() metodunu kullan
    Get.put(AuthContoller(), permanent: true);
  }
}

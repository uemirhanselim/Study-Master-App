import 'package:get/get.dart';
//? GetxContoller, ChangeNotifier ile aynı sanırım
class DataUploader extends GetxController {
  //? onReady() fonksiyonu yalnıza bir kez çağırılır, hot restart yaparsan birdaha çağırmaz hot reload lazım.
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  void uploadData() {
    print("Data is uploading...");
  }
}

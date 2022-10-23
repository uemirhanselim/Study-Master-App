import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_master_class/firebase_ref/references.dart';
import 'package:firebase_master_class/models/question_paper_model.dart';
import 'package:firebase_master_class/services/firebase_storage_service.dart';
import 'package:get/get.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    try {
      print("HELLLLOOOOOOO          1");
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      print("HELLLLOOOOOO            2" );
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      print("HELLLLOOOOOOO      3");
      allPapers.assignAll(paperList);

      for (var paper in paperList) {
        final imgUrl =
            await Get.find<FirebaseStorageService>().getImage(paper.title);
        paper.imageUrl = imgUrl;
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      print("error occured in getAllPapers -> $e");
    }
  }
}

import 'package:firebase_master_class/controllers/question_paper/data_uploader.dart';
import 'package:firebase_master_class/firebase_ref/loading_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploaderView extends StatelessWidget {
  DataUploaderView({super.key});
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return controller.loadingStatus.value == LoadingStatus.completed
              ? const Text("Upload completed")
              : const Text("Uploading...");
        }),
      ),
    );
  }
}

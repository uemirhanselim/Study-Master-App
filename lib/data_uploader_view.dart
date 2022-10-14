import 'package:firebase_master_class/controllers/question_paper/data_uploader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploaderView extends StatelessWidget {
  DataUploaderView({super.key});
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("uploading..."),
      ),
    );
  }
}
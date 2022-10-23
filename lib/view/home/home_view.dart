import 'package:firebase_master_class/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController questionPaperController = Get.find();
    return Scaffold(
      body: Obx(() => ListView.separated(
          itemBuilder: (context, index) {
            return ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                    placeholder:
                        const AssetImage("assets/images/app_splash_logo.png"),
                    image: NetworkImage(
                        questionPaperController.allPaperImages[index])),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: questionPaperController.allPaperImages.length),),
    );
  }
}

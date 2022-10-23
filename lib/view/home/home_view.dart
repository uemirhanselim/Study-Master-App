import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_master_class/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController questionPaperController = Get.find();
    return Scaffold(
      body: Obx(
        () => ListView.separated(
            itemBuilder: (context, index) {
              return ClipRRect(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CachedNetworkImage(
                    placeholder: (context, url) => Container(
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    ),
                    imageUrl:
                        questionPaperController.allPapers[index].imageUrl!,
                    errorWidget: (context, url, error) =>
                        Image.asset("assets/images/app_splash_logo.png"),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: questionPaperController.allPapers.length),
      ),
    );
  }
}

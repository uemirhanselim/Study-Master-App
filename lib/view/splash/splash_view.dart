import 'package:firebase_master_class/helpers/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(gradient: mainGradient(context)),
          child: Image.asset(
            "assets/images/app_splash_logo.png",
            width: 200,
            height: 200,
          ), //TODO: change splash image later
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
              "assets/images/app_splash_logo.png"), //TODO: change splash image later
        ),
      ),
    );
  }
}

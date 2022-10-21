import 'package:firebase_master_class/helpers/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryLightColorLight = Color(0xff3ac3cb);
const Color primaryColorLight = Color(0xfff85187); //TODO: change it later
const Color mainTextColoLight = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextTheme().apply(
        bodyColor: mainTextColoLight,
        displayColor: mainTextColoLight,
      ),
    );
  }
}

import 'package:firebase_master_class/helpers/themes/app_light_theme.dart';
import 'package:firebase_master_class/helpers/themes/theme_manager.dart';
import 'package:flutter/material.dart';

import 'app_dark_theme.dart';

const onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryLightColorLight,
    primaryColorLight,
  ],
);

const mainGradientDark = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryDarkColorDark,
    primaryColorDark,
  ],
);

LinearGradient mainGradient(BuildContext context) =>
    ThemeManager.isDarkMode(context) ? mainGradientDark : mainGradientLight;

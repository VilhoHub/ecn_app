import 'package:ecn_app/presentation/resources/colour_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: ColourManager.primary,
    scaffoldBackgroundColor: ColourManager.secondary,

    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColourManager.primary,
      foregroundColor: ColourManager.secondary,
      centerTitle: true,
      iconTheme: IconThemeData(color: ColourManager.secondary),
    ),

    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

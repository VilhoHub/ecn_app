import 'package:ecn_app/main.dart';
import 'package:ecn_app/presentation/resources/colour_manager.dart';
import 'package:ecn_app/presentation/resources/font_manager.dart';
import 'package:ecn_app/presentation/resources/string_manager.dart';
import 'package:ecn_app/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

Text infoBoxText(String text,
    {double fontSize = FontSize.f14,
    FontWeight fontWeight = FontWeightManager.bold}) {
  return Text(
    text,
    style: TextStyle(
      color: ColourManager.secondary,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}

GestureDetector homeCard(String text, Color colour, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      color: colour,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: FontSize.f20,
          ),
        ),
      ),
    ),
  );
}

Icon androidIOSTrailing() {
  return Icon(
    ECNApp.platform_isIOS
        ? Icons.arrow_forward_ios_outlined
        : Icons.arrow_forward_outlined,
  );
}

ListTile voterRegistrationTiles(
  BuildContext context, {
  required String text,
  required VoidCallback onTap,
}) {
  Size mediaQuery = MediaQuery.of(context).size;
  return ListTile(
    contentPadding: EdgeInsets.symmetric(
      vertical: mediaQuery.height * AppPadding.p0_01,
      horizontal: mediaQuery.width * AppPadding.p0_03,
    ),
    title: Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: FontSize.f16,
      ),
    ),
    trailing: androidIOSTrailing(),
    iconColor: ColourManager.primary,
    onTap: onTap,
  );
}

Padding voterRegistrationDivider(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * AppPadding.p0_03,
    ),
    child: Divider(
      color: ColourManager.item,
    ),
  );
}

Row bulletList(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(AppStrings.bullet),
      Expanded(
        child: Text(text),
      ),
    ],
  );
}

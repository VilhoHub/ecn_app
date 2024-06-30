import 'package:ecn_app/main.dart';
import 'package:flutter/material.dart';

Text infoBoxText(String text,
    {double fontSize = 14.0, FontWeight fontWeight = FontWeight.bold}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}

//TODO: ONPRESSED
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
            fontSize: 20.0,
          ),
        ),
      ),
    ),
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
      vertical: mediaQuery.height * 0.01,
      horizontal: mediaQuery.width * 0.03,
    ),
    title: Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    ),
    trailing: Icon(
      ECNApp.platform_isIOS
          ? Icons.arrow_forward_ios_outlined
          : Icons.arrow_forward_outlined,
    ),
    iconColor: Colors.blue,
    onTap: onTap,
  );
}

Padding voterRegistrationDivider(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.03,
    ),
    child: const Divider(
      color: Colors.grey,
    ),
  );
}

Row bulletList(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text("• "),
      Expanded(
        child: Text(text),
      ),
    ],
  );
}

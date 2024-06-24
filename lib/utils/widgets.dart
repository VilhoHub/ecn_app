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
GestureDetector homeCard(String text, Color colour) {
  return GestureDetector(
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

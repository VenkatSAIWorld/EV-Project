import 'dart:ui';

import 'package:flutter/Material.dart';

Widget Ev(text, {iconn = null, image = ""}) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      text,
      style: TextStyle(
          color: Colors.green[1000],
          fontSize: 18,
          fontWeight: FontWeight.bold,
          shadows: [
            // ignore: prefer_const_constructors
            Shadow(offset: Offset.infinite, color: Colors.red, blurRadius: 0.8)
          ]),
      textAlign: TextAlign.center,
    ),
    SizedBox(
      width: 5,
    ),
    Icon(
      iconn,
      color: Colors.red[1000],
    ),
    SizedBox(
      width: 5,
    ),
  ]);
}

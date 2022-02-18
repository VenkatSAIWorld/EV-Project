import 'dart:async';
import 'dart:ui';

import 'package:flutter/Material.dart';

/*class textfield extends StatelessWidget {
  const textfield({
    Key? key,
    String? name,
  }) : super(key: key, );
*/
Widget textfield(name, controller) {
  return Form(
      child: Center(
    child: TextField(
      controller: controller,
      style: TextStyle(
          color: Colors.green, fontSize: 12, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        hintText: "$name",
      ),
      textAlign: TextAlign.center,
      maxLength: 25,
    ),
  ));
}

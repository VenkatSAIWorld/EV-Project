
import 'package:flutter/material.dart';

showAlert(context, String text) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 20,
          //backgroundColor: Colors.orange,
          title: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                  radius: 6.0,
                  colors: [Colors.orange, Colors.red, Colors.green]),
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(color: Colors.green),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    //backgroundColor: Colors.green,
                    color: Colors.red[800]),
              ),
            ),
          ),
        );
      });
}
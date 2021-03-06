import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: TimePickerDialog(
          initialTime: TimeOfDay.now(),
        ),
      ),
    );
  }
}

/*
Widget timePicker() {
  return TimePickerDialog(
    initialTime: TimeOfDay.now(),
  );
}

*/

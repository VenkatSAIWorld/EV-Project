// ignore: unused_import
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String nearest = "Ramapuram";
  List<String> places = ["Ramapuram", "Porur", "Guindy"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: nearest,
        hint: Text("nearest station"),
        onChanged: (String? newvalue) {
          setState(() {
            nearest = newvalue!;
          });
        },
        items: places.map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                  child: Text(
                value,
                style: TextStyle(color: Colors.green),
              )),
            );
          },
        ).toList(),
      ),
    );
  }
}

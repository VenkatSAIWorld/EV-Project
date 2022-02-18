import 'package:ev_project/slot/ev.dart';
import 'package:flutter/material.dart';

class DropDownPlaces extends StatefulWidget {
  const DropDownPlaces({Key? key}) : super(key: key);

  @override
  _DropDownPlacesState createState() => _DropDownPlacesState();
}

class _DropDownPlacesState extends State<DropDownPlaces> {
  var Cities = ["Chennai", "Bangalore"];
  Map locations = {
    "Chennai": ["Guindy", "TNagar", "Porur"],
    "Bangalore": ["Koramangala", "Madiwala", "Santhi Nagar"]
  };

  var cty = "Chennai";
  var loc = "Guindy";
  var index = 0;

  _count() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: DropdownButton(
              value: cty,
              items: Cities.map<DropdownMenuItem<String>>(
                (String? value1) {
                  return DropdownMenuItem(
                    value: value1,
                    child: Text(
                      value1!,
                      style: TextStyle(color: Colors.green[800]),
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? val) {
                setState(() {
                  cty = val!;
                });
              },
            ),
          ),
          Ev("Nearest Stations"),
          Container(
            child: DropdownButton(
              value: loc,
              items: locations[cty].map<DropdownMenuItem<String>>(
                (String? value2) {
                  return DropdownMenuItem(
                    value: value2,
                    child: Text(
                      value2!,
                      style: TextStyle(color: Colors.green[800]),
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? val2) {
                setState(() {
                  loc = val2!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

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

  var cty;
  var loc;
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
              hint: Text("Nearest City"),
              value: cty,
              items: locations_City_list.map<DropdownMenuItem<String>>(
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
              onChanged: (val) async {
                setState(() {
                  cty = val;
                });
                if (locations_City_list.contains(cty)) {
                  index = locations_City_list.lastIndexOf(cty);
                }
              },
            ),
          ),
          Ev("Nearest Stations"),
          Container(
            child: DropdownButton(
              hint: Text("Nearest Stations"),
              value: loc,
              items: loc_list[index].Places?.map<DropdownMenuItem<String>>(
                (value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.green[800]),
                    ),
                  );
                },
              ).toList(),
              onChanged: (val2) {
                setState(() {
                  loc = val2;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Locations {
  String? City;
  List? Places;
  Locations({this.City, this.Places});
}

Locations loc1 =
    Locations(City: "Chennai", Places: ["TNagar", "Saidapet", "Guindy"]);
Locations loc2 = Locations(
    City: "Bangalore", Places: ["Koramangala", "Madiwala", "Shanthi Nagar"]);
Locations loc3 = Locations(
    City: "Trichy",
    Places: ["Chattiram Bus Stand", "Somarasempettai", "Sri Rangam"]);
Locations loc4 = Locations(
    City: "Madurai", Places: ["Periyar Bus Stand", "Thirumangalam", "Mallur"]);
Locations loc5 =
    Locations(City: "Salem", Places: ["Ammapettai", "Suramangalam", "5 Roads"]);
Locations loc6 =
    Locations(City: "Coimbatore", Places: ["Gandhipuram", "Ukkadam", "Sulur"]);

List<String> locations_City_list = [
  loc1.City!,
  loc2.City!,
  loc3.City!,
  loc4.City!,
  loc5.City!,
  loc6.City!
];

List<Locations> loc_list = [loc1, loc2, loc3, loc4, loc5, loc6];

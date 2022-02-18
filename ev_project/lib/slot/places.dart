/*

import 'dart:convert';

import 'package:flutter/material.dart';

class Places<T> {
  List<String>? Chennai;
  List<String>? Bangalore;
  List<String>? Trichy;
  List<String>? Madurai;
  List<String>? Salem;
  List<String>? Coimbatore;
  /*String? p7;
  String? p8;
  String? p;
  String? p6;
  */

  Places(
      {this.Chennai,
      this.Bangalore,
      this.Coimbatore,
      this.Madurai,
      this.Salem,
      this.Trichy});

  /*
  factory Places.fromJson(Map<String, List<String>> json) {
    return Places(Chennai: json["Chennai"], Bangalore: json["Bangalore"]);
  }
  */
}

Places<String> place1 = Places<String>(Chennai: [
  "Guidy",
  "Saidapet",
  "Tnagar",
  "Porur",
  "Poonamalle",
  "Anna Nagar",
  "CMBT"
], Bangalore: [
  "KR Puram",
  "Shanthi Nagar",
  "MG Road",
  "Lol Bagh",
  "Madiwala",
  "Koramangala"
], Coimbatore: [
  "Gandhipuram",
  "Ukkadam",
  "Madukarai",
  "Hope College",
  "Town Hall",
  "Avinashi Road"
]);

var p_chn = "Guindy";

class DropDownPlaces extends StatefulWidget {
  const DropDownPlaces({Key? key}) : super(key: key);

  @override
  _DropDownPlacesState createState() => _DropDownPlacesState();
}

class _DropDownPlacesState extends State<DropDownPlaces> {
  var place = "Guindy";
  @override
  Widget build(BuildContext context) {
    //var json = JsonDecoder().convert(place1.Chennai<String>);
    /*place = (place1.Chennai<String>).map((place1) {
      Places.fromJson(place1);
    }).toList();
    */
      List placeList=["Chennai", "Bangalore", "Coimbatore"];

    return Container(
      child: Row(
        children: [
          DropdownButton(
            items: place1.Chennai<DropdownMenuItem<String>>.map((String? dd_val) =>
                DropdownMenuItem(value: dd_val, child: Text(dd_val!))),
            onChanged: (String? newVal) {
              setState(() {
                p_chn = newVal!;
              });
            },
            value: p_chn,
          ),
          /*
          DropdownButton(
            items: place1.Chennai<String>.map((String? dd_val) =>
                DropdownMenuItem(value: dd_val, child: Text(dd_val!))),
            onChanged: (String? newVal) {
              setState(() {
                p_chn = newVal!;
              });
            },
            value: p_chn,
          ), */
        ],
      ),
    );
  }
}



/*
var places = [
  {
    "Chennai": [
      "Guidy",
      "Saidapet",
      "Tnagar",
      "Porur",
      "Poonamalle",
      "Anna Nagar",
      "CMBT"
    ],
    "Bangalore": [
      "KR Puram",
      "Shanthi Nagar",
      "MG Road",
      "Lol Bagh",
      "Madiwala",
      "Koramangala"
    ],
    "Trichy": ["Somarasempet", "Chattiram Bus Stop"],
    "Coimbatore": [
      "Gandhipuram",
      "Ukkadam",
      "Madukarai",
      "Hope College",
      "Town Hall",
      "Avinashi Road"
    ]
  }
];

*/
*/
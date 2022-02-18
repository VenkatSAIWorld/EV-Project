//import 'dart:js';

import 'package:ev_project/data1.dart';
import 'package:ev_project/slot/dropdown.dart';
import 'package:ev_project/slot/dropdownplaces.dart';
import 'package:ev_project/slot/ev.dart';
import 'package:ev_project/slot/fourwheelerform.dart';
import 'package:ev_project/slot/nextpage.dart';
import 'package:ev_project/slot/places.dart';
import 'package:ev_project/slot/slots/slot1.dart';
import 'package:ev_project/slot/slots/slot2.dart';
import 'package:ev_project/slot/slots/slot3.dart';
import 'package:ev_project/slot/slots/slot4.dart';
import 'package:ev_project/slot/slots/slot5.dart';
import 'package:ev_project/slot/slots/slot6.dart';
import 'package:ev_project/slot/slots/slot_example.dart';

import 'package:ev_project/slot/textfieldwidget.dart';
import 'package:ev_project/slot/twowheelerform.dart';
import 'package:flutter/material.dart';

Widget mainSlot() {
  return MaterialApp(
    theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
    routes: {
      "/": (context) => const MyApp(),
      "/new": (context) => const SecondRoute(),
      "/twowheel": (context) => TwoWheelForm(),
      "/fourwheel": (context) => const FourWheelForm(),
      "/slot1": (context) => const Slot1(),
      "/slot2": (context) => const Slot2(),
      "/slot3": (context) => const Slot3(),
      "/slot4": (context) => const Slot4(),
      "/slot5": (context) => const Slot5(),
      "/slot6": (context) => const Slot6(),
      "/slotexample": (context) => const SlotEg(),
      "/data1": (context) => const Data1()
    },
    initialRoute: "/",
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _location;
  var _cost;
  var _units;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _location = TextEditingController();
    _cost = TextEditingController();
    _units = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title:
            Ev("Electric Vehicle Charging Station", iconn: Icons.fire_hydrant),
      ),
      //Text("charging station"),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Ev("Type of Vehicle", iconn: Icons.car_rental),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Navigator.pushNamed(context, "/twowheel");
                },
                child: Ev("2 Wheeler", iconn: Icons.electric_bike),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Navigator.pushNamed(context, "/fourwheel");
                },
                child: Ev("4 Wheeler", iconn: Icons.car_rental_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {}, child: Ev("Search", iconn: Icons.search)),
          SizedBox(
            height: 20,
          ),
          textfield("Enter the Location", _location),
          Ev("Nearest City"),
          DropDownPlaces(),
          //PlacesDropDown(),
          SizedBox(
            height: 20,
          ),
          /* TimePickerDialog(
            initialTime: TimeOfDay.now(),
            confirmText: "Choosen",
          ),
          */
          SizedBox(
            height: 20,
          ),
          Ev("Booking Slot"),
          /*Container(
            height: 400,
            width: 400,
            child: DatePickerDialog(
                initialDate: DateTime(2000),
                firstDate: DateTime(1999),
                lastDate: DateTime(2020)),
          ),
          */
          TextButton(
              onPressed: () {},
              child: Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(20),
                child: CalendarDatePicker(
                    initialDate: DateTime(2022),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2025),
                    onDateChanged: (DateTime) async {
                      await Navigator.pushNamed(context, "/slotexample");
                      print("$DateTime");
                    }),
              )

              /*Text(
                "10:00am",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green[800]),
              )*/

              ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot1");
                  },
                  child: Text("SLOT1")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot2");
                  },
                  child: Text("SLOT2")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot3");
                  },
                  child: Text("SLOT3")),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text("11:00am",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot4");
                  },
                  child: Text("SLOT4")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot5");
                  },
                  child: Text("SLOT5")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/slot6");
                  },
                  child: Text("SLOT6")),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Ev("Charging", iconn: Icons.charging_station),
          SizedBox(
            height: 20,
          ),
          Ev("Duration"),
          SizedBox(
            height: 20,
          ),
          Ev("Cost", image: "rupee-indian.png"),
          TextButton(
            onPressed: () {},
            child: TextFormField(
              controller: _units,
              decoration: InputDecoration(hintText: "Number of Units"),
            ),
          ),
          //CircleAvatar(
          //backgroundImage: AssetImage("./images/rupee.png"),
          // ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, "/new");
              },
              icon: Icon(Icons.near_me),
              label: Text("next"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChargingDetails extends StatefulWidget {
  const ChargingDetails({Key? key}) : super(key: key);

  @override
  _ChargingDetailsState createState() => _ChargingDetailsState();
}

class _ChargingDetailsState extends State<ChargingDetails> {
  @override
  Widget build(BuildContext context) {
    var _chargerType;
    var _carMake;
    var _carModel;
    var typesOfCharger = [
      "Rapid 50kW 20mins",
      "Fast 7kW(4-6hrs) or 22kW(1-2hrs)",
      "slow 3-6kW(8-12hrs)"
    ];
    var carModels = [
      "Tesla Model3",
      "Tata Nexon EV",
      "Tata Tigor EV",
      "MG ZS EV",
      "Toyota Camry",
      "Volvo XC40"
    ];

    var carMake = ["Tesla", "Tata", "MG", "Toyota", "Volvo"];
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Charging Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: FormField(
                builder: (FormFieldState State) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Types of Charger Needed",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                    isEmpty: _chargerType == null || _chargerType == "",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _chargerType,
                        isDense: true,
                        items: typesOfCharger.map((String values) {
                          return DropdownMenuItem<String>(
                              child: Text(values), value: values);
                        }).toList(),
                        onChanged: (String? newVal) {
                          setState(() {
                            _chargerType = newVal!;
                            State.didChange(newVal);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: FormField(
                builder: (FormFieldState State) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Your Car Make",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                    isEmpty: _carMake == null || _carMake == "",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _carMake,
                        items: carMake.map((String values) {
                          return DropdownMenuItem<String>(
                              child: Text(values), value: values);
                        }).toList(),
                        onChanged: (String? newVal) {
                          setState(() {
                            _carMake = newVal!;
                            State.didChange(newVal);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: FormField(
                builder: (FormFieldState State) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Your Car Model",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                    isEmpty: _carModel == null || _carModel == "",
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _carModel,
                        items: carModels.map((String values) {
                          return DropdownMenuItem<String>(
                              child: Text(values), value: values);
                        }).toList(),
                        onChanged: (String? newVal) {
                          setState(() {
                            _carModel = newVal!;
                            State.didChange(newVal);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Licence Plate Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: 600,
              padding: EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(10),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    "Save Account Details",
                    style: TextStyle(fontSize: 18.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Hosting extends StatefulWidget {
  const Hosting({Key? key}) : super(key: key);

  @override
  _HostingState createState() => _HostingState();
}

class _HostingState extends State<Hosting> {
  var _chargerType = "";
  var typesOfCharger = [
    "Rapid 50kW 20mins",
    "Fast 7kW(4-6hrs) or 22kW(1-2hrs)",
    "slow 3-6kW(8-12hrs)"
  ];
  var _power = "";
  var _powerList = [
    "50kW(20mins)",
    "7kW(4-6hrs)",
    "22kW(1-2hrs)",
    "3kW(12hrs)",
    "6kW(8hrs)"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Hosting Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: FormField(builder: (FormFieldState state) {
                return InputDecorator(
                  decoration: InputDecoration(
                      filled: true, hintText: "Type of Charger Installed"),
                  isEmpty: _chargerType == null || _chargerType == "",
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: typesOfCharger
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (String? newVal) {
                        setState(() {
                          _chargerType = newVal!;
                        });
                      },
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: FormField(builder: (FormFieldState state) {
                return InputDecorator(
                  decoration: InputDecoration(filled: true, hintText: "Power"),
                  isEmpty: _power == null || _power == "",
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: _powerList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (String? newVal) {
                        setState(() {
                          _chargerType = newVal!;
                        });
                      },
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration:
                    InputDecoration(filled: true, hintText: "Street Address"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(filled: true, hintText: "City"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(hintText: "State"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(filled: true, hintText: "Zip Code"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  print("$_chargerType, $_power");
                },
                child: Text("Next: Add Account to Recieve Earnings"))
          ],
        ),
      ),
    );
  }
}

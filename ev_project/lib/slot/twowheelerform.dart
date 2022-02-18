import 'package:ev_project/slot/textfieldwidget.dart';
import 'package:flutter/material.dart';

class TwoWheelForm extends StatefulWidget {
  @override
  State<TwoWheelForm> createState() => _TwoWheelFormState();
}

class _TwoWheelFormState extends State<TwoWheelForm> {
  var _CustomerName;

  var _brandName;

  var _vehicleNumber;

  var _batteryType;

  var _batteryCapacity;

  var _batteryRatedPower;

  var _chargingTime;

  @override
  void initState() {
    super.initState();
    _CustomerName = TextEditingController();
        _brandName = TextEditingController();
    _vehicleNumber = TextEditingController();
    _batteryType = TextEditingController();
    _batteryRatedPower = TextEditingController();
    _batteryCapacity = TextEditingController();
    _chargingTime = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Two Wheeler Details"),
        ),
        body: Card(
          child: Form(
            child: ListView(
              children: [
                Image(
                    width: 200,
                    height: 200,
                    image: NetworkImage(
                        "https://5.imimg.com/data5/JP/VG/MY-52197380/electric-scooter-race-60-500x500.jpg")),
                Text("Customer Name"),
                textfield("Customer name", _CustomerName),
                Text("Brand Name"),
                textfield("Okinava Praise Pro", _brandName),
                Text("Vehicle Number"),
                textfield("Vehicle Number", _vehicleNumber),
                Text("Battery Type: Li-ion"),
                textfield("Li-ion 2kwh", _batteryType),
                Text("Battery Capacity"),
                textfield("72V, 29Ah", _batteryCapacity),
                Text("Battery Rated Power"),
                textfield("1000W, BLDC Motor", _batteryRatedPower),
                Text("Charging Time"),
                textfield("2-3 hrs", _chargingTime),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                      AlertDialog(
                        title: Text("Added"),
                      );
                    },
                    icon: Icon(Icons.backpack),
                    label: Text("Click to Add"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

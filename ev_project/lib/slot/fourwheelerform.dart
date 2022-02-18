import 'package:ev_project/slot/textfieldwidget.dart';
import 'package:flutter/material.dart';

class FourWheelForm extends StatefulWidget {
  const FourWheelForm({Key? key}) : super(key: key);

  @override
  State<FourWheelForm> createState() => _FourWheelFormState();
}

class _FourWheelFormState extends State<FourWheelForm> {
  var _CustomerName;

  var _brandName;

  var _vehicleNumber;

  var _batteryType;

  var _batteryCapacity;

  var _batteryRatedPower;

  var _chargingTime;
  var _motor;
  var _superChargingMax;
  var _onboardChargerMax;

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
    _motor = TextEditingController();
    _superChargingMax = TextEditingController();
    _onboardChargerMax = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    List detailsList = [
      _CustomerName.text,
      _brandName.text,
      _vehicleNumber.text,
      _batteryType.text,
      _batteryRatedPower.text,
      _batteryCapacity.text,
      _motor.text,
      _superChargingMax.text,
      _onboardChargerMax.text
    ];

    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Four Wheeler Details"),
        ),
        body: Card(
          child: Form(
            child: ListView(
              children: [
                Image(
                    width: 200,
                    height: 200,
                    image: NetworkImage(
                        "https://tesla-cdn.thron.com/delivery/public/image/tesla/2b239404-c402-4c55-9a10-a061f2cf0ae8/bvlatuR/std/947x677/global-spec-hero")),
                Text("Customer Name"),
                textfield("Customer name", _CustomerName),
                Text("Brand Name"),
                textfield("Tesla Model 3", _brandName),
                Text("Vehicle Number"),
                textfield("Vehicle Number", _vehicleNumber),
                Text("Battery Type: Long Range AWD"),
                textfield("Li-ion 2kwh", _batteryType),
                Text("Battery Capacity"),
                textfield("72V, 29Ah", _batteryCapacity),
                Text("Motor"),
                textfield("Long Range AWD  Motor", _motor),
                Text("Supercharging Max"),
                textfield("250kW Max", _superChargingMax),
                Text("Onboard Charger Max"),
                textfield("11.5 kW max (48A)", _onboardChargerMax),
                ElevatedButton.icon(
                    onPressed: () async {
                      //await showAlertDialog(context, detailsList);
                      await Navigator.pushNamed(context, "/data1", arguments: {
                        "CustomerName": _CustomerName.text,
                        "BrandName": _brandName.text,
                        "BatteryCapacity": _batteryCapacity.text,
                        "BatteryRatedPower": _batteryRatedPower.text,
                        "BatteryType": _batteryType.text,
                        "OnboardChargerMax": _onboardChargerMax.text,
                      });
                      await Navigator.pushNamed(context, "/");
                      /*AlertDialog(
                        title: Text("Added"),
                      ); */
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

showAlertDialog(context, detailsList) {
  showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(20),
          child: ScaffoldMessenger(
              child: ListView(children: [
            Text(detailsList[0]),
            Text(detailsList[1]),
            Text(detailsList[2]),
            Text(detailsList[3]),
            Text(detailsList[4]),
            Text(detailsList[5]),
            Text(detailsList[6]),
          ])),
        );
      });
}

displayInfo(_text) {
  return Center(
    child: Column(
      children: [Text(_text)],
    ),
  );
}

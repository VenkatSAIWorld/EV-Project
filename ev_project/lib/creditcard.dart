import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  var _name;
  var _cardNumber;
  var _expiryDate;
  var _securityCode;
  var _zipCode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name = TextEditingController();
    _cardNumber = TextEditingController();
    _expiryDate = TextEditingController();
    _securityCode = TextEditingController();
    _zipCode = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    bool _isSwitched = false;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Credit Card",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(filled: true, hintText: "Name"),
              controller: _name,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true, hintText: "16-Digit Card Number"),
              controller: _cardNumber,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true, hintText: "Expiry Date (MM/YYYY)"),
              controller: _expiryDate,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:
                  InputDecoration(filled: true, hintText: "Security Code"),
              controller: _securityCode,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(filled: true, hintText: "Zip Code"),
              controller: _zipCode,
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("Set As Default"),
                Switch(
                    value: _isSwitched,
                    onChanged: (newVal) {
                      setState(() {
                        _isSwitched = newVal;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  print(_cardNumber.text);
                  Navigator.pushNamed(context, "/data", arguments: {
                    "name": _name.text,
                    "cardNumber": _cardNumber.text,
                    "expiryDate": _expiryDate.text,
                    "securityCode": _securityCode.text,
                    "zipCode": _zipCode.text,
                  });
                },
                child: Text("Add Credit Card")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}

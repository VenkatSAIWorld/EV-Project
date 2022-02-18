import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShareCharger extends StatelessWidget {
  const ShareCharger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        padding: EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              "Share Your Charger",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Share your EV charger for amazing benifits."),
            SizedBox(
              height: 60,
            ),
            Icon(
              Icons.money_sharp,
              color: Colors.amber,
              size: 30,
            ),
            Text("Share your charger kick back and earn money"),
            SizedBox(
              height: 60,
            ),
            Icon(
              Icons.car_rental,
              color: Colors.red,
              size: 30,
            ),
            Text(
                "Help grow the community of EV owners and reduce greenhouse gases"),
            SizedBox(
              height: 60,
            ),
            Icon(
              Icons.payment_sharp,
              color: Colors.green,
              size: 30,
            ),
            Text("Easy and stress free with secure online payments"),
            SizedBox(
              height: 60,
            ),
            Icon(Icons.clean_hands, color: Colors.blueGrey[900], size: 30),
            Text("We find people to use your charger"),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Navigator.pushNamed(context, "/hosting");
                },
                child: Text("Share your Charger"))
          ],
        ),
      ),
    );
  }
}

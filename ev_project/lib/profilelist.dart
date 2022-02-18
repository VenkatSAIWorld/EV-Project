import 'dart:ui';

import 'package:ev_project/widget/show_alert_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/user");
              },
              child: ListTile(
                title: Text("Update User Details"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/chargingDetails");
              },
              child: ListTile(
                title: Text("Charging Details"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/hosting");
              },
              child: ListTile(
                title: Text("Hosting Details"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/payment");
              },
              child: ListTile(
                title: Text("Payment Options"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/history");
              },
              child: ListTile(
                title: Text("History"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/refer");
              },
              child: ListTile(
                title: Text("Refer a Friend"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                [
                  await showAlert(context, "Logged Out Successfully!!!..."),
                  await Navigator.pushNamed(context, "/userhostsignup")
                  //await Navigator.pushNamed(context, "/logout"),
                ];
              },
              child: ListTile(
                title: Text("Log Out"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              //selected: true,
              tileColor: Colors.grey[400],
              title: Text("LEGAL"),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Text("Terms of Use"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Text("Privacy Policy"),
                trailing: Text(
                  ">",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.grey[400],
              title: Text("APP VERSION"),
            ),
            TextButton(
              onPressed: () {},
              child: ListTile(
                title: Text("Version"),
                trailing: Text("0.0.7"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

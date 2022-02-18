//import 'package:ev_project/profilelist.dart';
import 'package:ev_project/widget/show_alert_widget.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: ElevatedButton(
            child: Text("Logged Out"),
            onPressed: () async {
              await showAlert(context, "Logged Out Successfully!!!...");
              await Navigator.pushNamed(context, "/userhostsignup");
            },
          )),
    );
  }
}


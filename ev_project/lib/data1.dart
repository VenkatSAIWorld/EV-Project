import 'package:flutter/material.dart';

class Data1 extends StatefulWidget {
  const Data1({Key? key}) : super(key: key);

  @override
  _Data1State createState() => _Data1State();
}

class _Data1State extends State<Data1> {
  @override
  Widget build(BuildContext context) {
    Map data = {};

    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(body: Text("$data"));
  }
}

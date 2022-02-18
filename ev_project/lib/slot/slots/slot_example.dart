import 'package:ev_project/slot//ev.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SlotEg extends StatefulWidget {
  const SlotEg({Key? key}) : super(key: key);

  @override
  State<SlotEg> createState() => _SlotEgState();
}

class _SlotEgState extends State<SlotEg> {
  // bool _hasPressed = true;
  // bool _hasPressed1 = true;
  // bool _hasPressed2 = true;
  // bool _hasPressed3 = true;

  var slotList = ["1", "2", "3", "4", "5", "6", "7", "8", "9"];

  int index = 0;
  var index1 = "";

  count() {
    setState(() {
      index += 1;
    });
  }

  List<bool> _hasPress = List.generate(100, (index) => true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slot Booking"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.amber[600]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SLOT1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green[1000]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _hasPress[0] = !_hasPress[0];
                                      });
                                      index1 = slotList[0];
                                    },
                                    child: Text(
                                      slotList[0],
                                      style: TextStyle(
                                          color: _hasPress[0]
                                              ? Colors.green
                                              : Colors.white,
                                          backgroundColor:
                                              _hasPress[0] ? null : Colors.red),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _hasPress[1] = !_hasPress[1];
                                      });
                                      count();
                                      index1 = slotList[3];
                                    },
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                          color: _hasPress[1]
                                              ? Colors.green
                                              : Colors.white,
                                          backgroundColor:
                                              _hasPress[1] ? null : Colors.red),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _hasPress[2] = !_hasPress[2];
                                      });
                                      count();
                                      index1 = slotList[6];
                                    },
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                          color: _hasPress[2]
                                              ? Colors.green
                                              : Colors.white,
                                          backgroundColor:
                                              _hasPress[2] ? null : Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[3] = !_hasPress[3];
                                });
                                count();
                                index1 = slotList[1];
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: _hasPress[3]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[3] ? null : Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[4] = !_hasPress[4];
                                });
                                count();
                                index1 = slotList[4];
                              },
                              child: Text(
                                '5',
                                style: TextStyle(
                                    color: _hasPress[4]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[4] ? null : Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[5] = !_hasPress[5];
                                });
                                count();
                                index1 = slotList[7];
                              },
                              child: Text(
                                '8',
                                style: TextStyle(
                                    color: _hasPress[5]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[5] ? null : Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[6] = !_hasPress[6];
                                });
                                count();
                                index1 = slotList[2];
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: _hasPress[6]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[6] ? null : Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[7] = !_hasPress[7];
                                });
                                count();
                                index1 = slotList[5];
                              },
                              child: Text(
                                '6',
                                style: TextStyle(
                                    color: _hasPress[7]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[7] ? null : Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _hasPress[8] = !_hasPress[8];
                                });
                                count();
                                index1 = slotList[8];
                              },
                              child: Text(
                                '9',
                                style: TextStyle(
                                    color: _hasPress[8]
                                        ? Colors.green
                                        : Colors.white,
                                    backgroundColor:
                                        _hasPress[8] ? null : Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showAlertDialog(context, index1);
                          Navigator.pushNamed(context, ("/"));
                        },
                        child: Text("Slot Booked"))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(context, val) {
  var time = TimeOfDay.now();
  return showDialog(
      context: context,
      builder: (context) {
        var mins = time.minute < 10 ? "0${time.minute}" : time.minute;

        return AlertDialog(
          title: Text(
              "Slot Number $val Has been Booked at ${time.hour}:$mins Hrs/Mins"),
        );
      });
}

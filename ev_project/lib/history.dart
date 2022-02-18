import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration:
                      BoxDecoration(border: Border.all(), color: Colors.purple),
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(),
                        child: const Center(
                          child: Text("Paid",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        )),
                  ),
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                            child: Text("Hosted",
                                style: TextStyle(fontSize: 18)))),
                  ),
                ),
              ],
            ),
            Center(child: Text("No Reservation Found"))
          ],
        ),
      ),
    );
  }
}

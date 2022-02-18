import 'package:flutter/material.dart';

class SlotBooking extends StatefulWidget {
  const SlotBooking({Key? key}) : super(key: key);

  @override
  _SlotBookingState createState() => _SlotBookingState();
}

class _SlotBookingState extends State<SlotBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: CalendarDatePicker(
            initialDate: DateTime(2020),
            firstDate: DateTime(2020),
            lastDate: DateTime(2025),
            onDateChanged: (DateTime) {
              print("Date Picked ${DateTime.hour}");
              Navigator.pushNamed(context, "/slotbooking");
            }),
      ),
    );
  }
}

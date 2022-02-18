import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

final _lighColors = [
  Colors.amber.shade300,
  Colors.lightGreen.shade300,
  Colors.lightBlue.shade300,
  Colors.lime.shade300,
  Colors.red.shade300,
  Colors.orange.shade300,
  Colors.pink.shade300,
  Colors.deepOrange.shade300,
  Colors.purple.shade300
];

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
    required this.signup,
    required this.index,
  }) : super(key: key);

  final SignUp signup;
  final int index;

  @override
  Widget build(BuildContext context) {
    final color = _lighColors[index % _lighColors.length];
    final minHeight = getMinHeight(index);

    return Card(
      color: color,
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              signup.userName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              signup.email,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              signup.password,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '${signup.mobileNumber}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }
}

import 'package:ev_project/host_signup.dart';
import 'package:ev_project/user_signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const UserHostSignUp());
}

class UserHostSignUp extends StatefulWidget {
  const UserHostSignUp({Key? key}) : super(key: key);

  @override
  State<UserHostSignUp> createState() => _UserHostSignUpState();
}

class _UserHostSignUpState extends State<UserHostSignUp> {
  // This widget is the root of your application.
  var flag = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("User-Host Sign Up Form"),
      ),
      body: Column(
        children: <Widget>[
          AnimatedCrossFade(
              firstCurve: Curves.elasticIn,
              secondCurve: Curves.easeInCubic,
              firstChild: UserSignup(),
              secondChild: HostSignUp(),
              crossFadeState:
                  flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 500)
              ),
          TextButton(
            child: Text(
              flag ? 'Go to Host Sign Up' : 'Go to User Sign Up',
              style: TextStyle(backgroundColor: Colors.green,
              color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                flag = !flag;
              });
            },
          )
        ],
      ),
    ));
  }
}

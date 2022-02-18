import 'package:ev_project/host_signup.dart';
import 'package:ev_project/user_signup.dart';
import 'package:flutter/material.dart';

class CrossFadeLogin extends StatefulWidget {
  const CrossFadeLogin({Key? key}) : super(key: key);

  @override
  _CrossFadeLoginState createState() => _CrossFadeLoginState();
}

class _CrossFadeLoginState extends State<CrossFadeLogin> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.bounceInOut,
                firstChild: UserSignup(),
                secondChild: HostSignUp(),
                crossFadeState:
                    flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 300)),
            ElevatedButton(
                onPressed: () {},
                child: Text(flag ? "User Login" : "Host Login")),
            TextButton(
                onPressed: () {
                  setState(() {
                    flag = !flag;
                  });
                },
                child:
                    Text(flag ? "Go to User Sign Up" : "Go to host Sign Up")),
          ],
        ),
      ),
    );
  }
}

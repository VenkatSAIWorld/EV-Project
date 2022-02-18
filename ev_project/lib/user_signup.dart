import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:ev_project/widget/container_widget.dart';
import 'package:flutter/material.dart';

class UserSign extends StatelessWidget {
  const UserSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Sign Up Form-User",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        body: UserSignup(),
      ),
    );
  }
}

class UserSignup extends StatelessWidget {
  var userNameControl = TextEditingController();
  var _username = SignUpFields.userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "User Sign Up Form",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green,
                decorationColor: Colors.orange),
          ),
          ContainerWidget(
            TextFormField(
              decoration: InputDecoration(
                  hoverColor: Colors.amber,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  //label: Text("UserName"),
                  labelText: "UserName",
                  hintText: "UserName"),
              controller: userNameControl,
              onSaved: (value) {
                SignUpFields.userName = value!;
              },
            ),
          ),
          ContainerWidget(
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                hoverColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          ),
          ContainerWidget(
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hoverColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          ),
          ContainerWidget(
            TextFormField(
              decoration: InputDecoration(
                hintText: "Re-Type Password",
                hoverColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          ),
          ContainerWidget(
            TextFormField(
              decoration: InputDecoration(
                hintText: "Mobile Number",
                hoverColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                // Navigator.pushNamed(context, "/dbsign");
              },
              child: Text("User Sign Up"))

          /*DatePickerDialog(
            initialDate: DateTime(2022),
            firstDate: DateTime(2022),
            lastDate: DateTime(2025)),*/
        ],
      ),
    );
  }
}

import 'package:ev_project/hosting.dart';
import 'package:ev_project/widget/container_widget.dart';
import 'package:ev_project/widget/show_alert_widget.dart';
import 'package:flutter/material.dart';

Widget hostSignUp() {
  return MaterialApp(
      routes: {"/newhost": (context) => Hosting()},
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "Sign Up Form - Host",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          body: HostSignUp()));
}

class HostSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          "Host Sign Up Form",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
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
          ),
        ),
        ContainerWidget(
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Host Email"),
          ),
        ),
        ContainerWidget(
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Password"),
          ),
        ),
        ContainerWidget(
          TextFormField(
            decoration: InputDecoration(
              hintText: "Re-Type Password",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ),
        ContainerWidget(
          TextFormField(
            decoration: InputDecoration(
              hintText: "Mobile Number",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ),
        ContainerWidget(
          TextFormField(
            decoration: InputDecoration(
              hintText: "Charging Location",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                showAlert(context, "Host Signed Up Successfully!...");
                // Navigator.pushNamed(context, "/history");
              },
              child: Text("Host Sign Up Form")),
        )

        /*DatePickerDialog(
          initialDate: DateTime(2022),
          firstDate: DateTime(2022),
          lastDate: DateTime(2025)),*/
      ],
    );
  }
}

import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  var firstname;
  var lastname;
  var email;
  var userList = [];
  bool check = false;

  final _formKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    firstname = TextEditingController();
    lastname = TextEditingController();
    email = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "User Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                key: _formKey,
                decoration: InputDecoration(
                  filled: true,
                  //fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: "First Name",
                ),
                autofocus: true,
                controller: firstname,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter the Text";
                  }
                  //return null;
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Last Name"),
                autofocus: true,
                controller: lastname,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Email"),
                autofocus: true,
                controller: email,
                validator: (String? value) {
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email.text)) {
                    return "Your id is valid";
                  }
                  ;
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                    value: this.check,
                    onChanged: (val) {
                      setState(() {
                        this.check = val!;
                      });
                    }),
                Text("Receive Email Updates")
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () async {
                  //await Navigator.pushNamed(context, "/dbpage");
                  Navigator.pushNamed(context, "/slots");
                },
                onLongPress: () async {
                  if (_formKey.currentState!.validate()) {
                    await ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(radius: 6.0, colors: [
                                Colors.orange,
                                Colors.red,
                                Colors.green
                              ]),
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(color: Colors.green),
                            ),
                            child: Center(
                              child: Text(
                                "Processing Data",
                                style: TextStyle(
                                    //backgroundColor: Colors.green,
                                    color: Colors.red[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),
                              ),
                            ))));
                  }
                  ;
                  await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Container(
                              height: 300,
                              child: Column(
                                children: [
                                  Text(
                                    "User Details",
                                    style: TextStyle(
                                        decorationColor: Colors.pink,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.red,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 3,
                                        letterSpacing: 1.2,
                                        textBaseline: TextBaseline.ideographic,
                                        decorationStyle:
                                            TextDecorationStyle.dotted),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    " First Name : ${firstname.text}",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        backgroundColor: Colors.green),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "LastName: ${lastname.text}",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        backgroundColor: Colors.green),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Email: ${email.text}",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        backgroundColor: Colors.green),
                                  ),
                                ],
                              ),
                            ));
                      });
                },
                child: Text("Update"))
          ],
        ),
      ),
    );
  }
}

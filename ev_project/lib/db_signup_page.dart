// ignore_for_file: prefer_const_constructors

import 'package:ev_project/database/db.dart';
import 'package:ev_project/db_details_page.dart';
import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:ev_project/widget/signup_card_widget.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget dbSignUp() {
  return Builder(builder: (context) {
    return DbSignUpForm();
  });
}

class DbSignUpForm extends StatefulWidget {
  const DbSignUpForm({Key? key}) : super(key: key);

  @override
  _DbSignUpFormState createState() => _DbSignUpFormState();
}

class _DbSignUpFormState extends State<DbSignUpForm> {
  late List<SignUp> signups;
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshSignUp();
  }

  @override
  void dispose() {
    EvDataBase.instance.close();
    // TODO: implement dispose
    super.dispose();
  }

  Future refreshSignUp() async {
    setState(() {
      isLoading = true;
    });
    this.signups = await EvDataBase.instance.readAllSignUp();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "User Sign Up DataBase",
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.search), SizedBox(width: 12)],
        ),
        body: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : signups.isEmpty
                    ? Text("no user data")
                    : Text("hello")
            //buildSignUp()
            ),
      ),
    );
  }
}


  /*

  Widget buildSignUp() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          final signup = signups[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DbDetailsPage(signUpId: signup.id!),
              ));
              refreshSignUp();
            },
            child: SignUpWidget(signup: signup, index: index),
          );
        });
  }
}

*/

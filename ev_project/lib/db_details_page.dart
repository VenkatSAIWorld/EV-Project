import 'package:ev_project/database/db.dart';
import 'package:ev_project/edit_signup_page.dart';
import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DbDetailsPage extends StatefulWidget {
  final int signUpId;

  const DbDetailsPage({
    Key? key,
    required this.signUpId,
  }) : super(key: key);

  @override
  _DbDetailsPageState createState() => _DbDetailsPageState();
}

class _DbDetailsPageState extends State<DbDetailsPage> {
  late SignUp signup;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);

    this.signup = await EvDataBase.instance.readNote(widget.signUpId);

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      signup.userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    
                    SizedBox(height: 8),
                    Text(
                      signup.email,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
              ),
      );

  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditNotePage(signup: signup),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          await EvDataBase.instance.delete(widget.signUpId);

          Navigator.of(context).pop();
        },
      );
}

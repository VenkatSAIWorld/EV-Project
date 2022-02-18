import 'package:ev_project/database/db.dart';
import 'package:ev_project/signup_form_widget.dart';
import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:ev_project/widget/signup_card_widget.dart';
import 'package:flutter/material.dart';

class AddEditNotePage extends StatefulWidget {
  final SignUp? signup;

  const AddEditNotePage({
    Key? key,
    this.signup,
  }) : super(key: key);
  @override
  _AddEditNotePageState createState() => _AddEditNotePageState();
}

class _AddEditNotePageState extends State<AddEditNotePage> {
  final _formKey = GlobalKey<FormState>();

  late String userName;
  late String email;
  late String password;
  late num mobileNumber;

  @override
  void initState() {
    super.initState();

    userName = widget.signup?.userName ?? '';
    email = widget.signup?.email ?? '';
    password = widget.signup?.password ?? '';
    mobileNumber = widget.signup?.mobileNumber?? 0;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [buildButton()],
        ),
        body: Form(
          key: _formKey,
          child: SignUpFormWidget(
             userName: userName,
        email: email,
        password: password,
        mobileNumber: mobileNumber.toString()
           
          ),
        ),
      );

  Widget buildButton() {
    final isFormValid = userName.isNotEmpty && email.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateNote,
        child: Text('Save'),
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.signup != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final note = widget.signup!.copy(
      userName: userName,
        email: email,
        password: password,
        mobileNumber: mobileNumber
    );

    await EvDataBase.instance.update(note);
  }

  Future addNote() async {
    final signup = SignUp(
        userName: userName,
        email: email,
        password: password,
        mobileNumber: mobileNumber);

    await EvDataBase.instance.create(signup);
  }
}

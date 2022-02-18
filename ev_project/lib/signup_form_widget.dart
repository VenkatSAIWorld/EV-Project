import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  final String? userName;
  final String? email;
  final String? password;
  final String? mobileNumber;

  const SignUpFormWidget(
      {Key? key,
      this.userName = '',
      this.email = '',
      this.password = '',
      this.mobileNumber = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("${userName}"),
              Text("${email}"),
              Text("${password}")
            ],
          ),
        ),
      );
}

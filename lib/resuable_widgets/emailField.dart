import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  const EmailField({required this.controller});

  final TextEditingController controller;

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.grey,
      decoration: const InputDecoration(
          hintText: 'Email',
          icon: Icon(
            Icons.mail_outline,
            color: Colors.grey,
          ),
          hintStyle: TextStyle(color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.grey,
            width: 3.0,
          ))),
    ));
  }
}

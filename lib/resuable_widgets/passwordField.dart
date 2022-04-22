import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({required this.controller});

  final TextEditingController controller;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isVisible = true;

  void passwordView() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widget.controller,
        cursorColor: Colors.grey,
        obscureText: _isVisible,
        decoration: InputDecoration(
            hintText: 'Password',
            suffix: GestureDetector(
              onTap: passwordView,
              child: _isVisible
                  ? Icon(Icons.visibility_outlined)
                  : Icon(Icons.visibility_off_outlined),
            ),
            icon: const Icon(
              Icons.lock_outline,
              color: Colors.grey,
            ),
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
              width: 3.0,
            ))),
      ),
    );
  }
}

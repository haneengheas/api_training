import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool secure;
  final TextEditingController controller;
  InputField(
      {required this.hint, required this.secure, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: secure,
        decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}

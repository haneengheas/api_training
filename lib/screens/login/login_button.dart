import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function onTap;
  LoginButton({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal,
        ),
        child: Center(
          child: Text('Login'),
        ),
      ),
    );
  }
}

import 'package:api/screens/login/controller.dart';
import 'package:api/screens/login/input_field.dart';
import 'package:api/screens/login/login_button.dart';
import 'package:api/screens/login/model.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController _loginController = LoginController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late LoginModel loginModel;
  _userLogin() async {
    loginModel = await _loginController.userLogin(
        email: _emailController.text, password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          InputField(
            hint: 'Email',
            secure: false,
            controller: _emailController,
          ),
          InputField(
            hint: 'Password',
            secure: true,
            controller: _passwordController,
          ),
          LoginButton(
            onTap: () {
              _userLogin();
            },
          )
        ],
      ),
    );
  }
}

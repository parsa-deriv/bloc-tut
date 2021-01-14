import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            SizedBox(
              height: 25,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() => TextFormField(
        decoration: InputDecoration(
          labelText: "Email Address",
          hintText: "you@email.com",
        ),
        keyboardType: TextInputType.emailAddress,
      );

  Widget passwordField() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
        ),
      );

  Widget submitButton() => RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Submit!"),
        onPressed: () {},
      );
}

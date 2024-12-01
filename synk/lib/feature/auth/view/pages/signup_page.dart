import 'package:flutter/material.dart';
import 'package:synk/feature/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'Sign Up.',
            style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        CustomField(
          hintText: "Name",
        ),
        CustomField(
          hintText: "Email",
        ),
        CustomField(
          hintText: "Password",
        ),
      ],),
    );
  }
}
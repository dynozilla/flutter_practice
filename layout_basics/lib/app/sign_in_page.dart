// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layout_basics/common/custom_elevated_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        centerTitle: true,
        title: const Text('Any App'),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24.0),
          CustomElevatedButton(
              title: 'Login with Gmail',
              buttonColor: Colors.white,
              textColor: Colors.black87,
              imageLocation: 'assets/images/google_logo.png',
              onPressed: () {}),
          SizedBox(height: 12.0),
          CustomElevatedButton(
              title: 'Login with Facebook',
              buttonColor: Colors.blue.shade900,
              textColor: Colors.white,
              imageLocation: 'assets/images/facebook_logo.png',
              onPressed: () {}),
          SizedBox(height: 12.0),
          CustomElevatedButton(
              title: 'Login with Email',
              buttonColor: Colors.indigo,
              textColor: Colors.white,
              imageLocation: 'assets/images/email.png',
              onPressed: () {}),
          SizedBox(height: 12.0),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 12.0),
          Text(
            'Register here',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}

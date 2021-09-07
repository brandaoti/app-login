import '../../core/values/values.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: AppPaddings.symmetric,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: _body(),
          ),
        ),
      ),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Image.asset(AppImages.logoLogin, height: 280, width: 280),
        _illustration(),
      ],
    );
  }

  Widget _illustration() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 34.0),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(.2),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.0),
          bottom: Radius.circular(30.0),
        ),
      ),
      child: _content(),
    );
  }

  Widget _content() {
    return Column(
      children: [
        const SizedBox(height: 46.0),
        Text(
          'Sign In',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 36.0),
        _forms(),
        const SizedBox(height: 8.0),
        _buttons(),
      ],
    );
  }

  Widget _forms() {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey.withOpacity(0)),
      borderRadius: BorderRadius.circular(8.0),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email Address',
            filled: true,
            fillColor: AppColors.white.withOpacity(.8),
            labelStyle: TextStyle(color: AppColors.black),
            enabledBorder: border,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.background),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Password',
            fillColor: AppColors.white.withOpacity(.8),
            suffixIcon: Icon(Icons.visibility),
            labelStyle: TextStyle(color: AppColors.black),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.background),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        TextButton(
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 12,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            child: Text('Sign In'),
            style: ElevatedButton.styleFrom(
              primary: AppColors.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I´m a new user.'),
          ],
        ),
        const SizedBox(height: 44.0),
      ],
    );
  }
}

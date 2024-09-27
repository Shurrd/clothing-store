import 'package:clothing_store/components/arrow_button.dart';
import 'package:clothing_store/components/basic_app_bar.dart';
import 'package:clothing_store/components/my_input_field.dart';
import 'package:clothing_store/screens/auth/email/set_password.dart';
import 'package:flutter/material.dart';

class EmailSignup extends StatefulWidget {
  const EmailSignup({super.key});

  @override
  _EmailSignupState createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  @override
  void dispose() {
    _emailController.removeListener(_validateEmail);
    _emailController.dispose();
    super.dispose();
  }

  void _validateEmail() {
    setState(() {
      _isEmailValid = _isValidEmail(_emailController.text);
    });
  }

  bool _isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  void _onNextPressed() {
    if (_isEmailValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SetPassword()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BasicAppBar(
        title: "Sign Up with Email",
        hasSettings: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter an email to get started',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            const Text("Email", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            MyInputField(
              hintText: "Enter an Email",
              controller: _emailController,
            ),
            const SizedBox(height: 24),
            ArrowButton(
              onPressed: _isEmailValid ? _onNextPressed : null,
              text: "Next",
              isDisabled: !_isEmailValid,
              spaceBetween: false,
            ),
          ],
        ),
      ),
    );
  }
}

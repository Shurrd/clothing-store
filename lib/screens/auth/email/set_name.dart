import 'package:clothing_store/components/basic_app_bar.dart';
import 'package:clothing_store/components/my_input_field.dart';
import 'package:clothing_store/components/my_button.dart';
import 'package:clothing_store/screens/auth/email/set_password.dart';
import 'package:flutter/material.dart';

class SetName extends StatefulWidget {
  const SetName({super.key});

  @override
  _SetNameState createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool _isFormValid = false;

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_validateForm);
    _lastNameController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _firstNameController.removeListener(_validateForm);
    _lastNameController.removeListener(_validateForm);
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _validateForm() {
    setState(() {
      _isFormValid = _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty;
    });
  }

  void _onSignUpPressed() {
    if (_isFormValid) {
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
              'What\'s your name?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            const Text("First Name", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            MyInputField(
              hintText: "Your first name",
              controller: _firstNameController,
            ),
            const SizedBox(height: 20),
            const Text("Last Name", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            MyInputField(
              hintText: "Your last name",
              controller: _lastNameController,
            ),
            const SizedBox(height: 24),
            MyButton(
              onPressed: _onSignUpPressed,
              text: "Sign Up",
              isDisabled: !_isFormValid,
            ),
          ],
        ),
      ),
    );
  }
}

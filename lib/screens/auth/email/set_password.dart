import 'package:clothing_store/components/arrow_button.dart';
import 'package:clothing_store/components/basic_app_bar.dart';
import 'package:clothing_store/components/my_input_field.dart';
import 'package:clothing_store/screens/auth/email/set_name.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  _SetPasswordState createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordValid = false;
  bool _doPasswordsMatch = false;
  String _passwordStrength = '';

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validatePassword);
    _confirmPasswordController.addListener(_validatePassword);
  }

  @override
  void dispose() {
    _passwordController.removeListener(_validatePassword);
    _confirmPasswordController.removeListener(_validatePassword);
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _validatePassword() {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    setState(() {
      _isPasswordValid = _checkPasswordStrength(password);
      _doPasswordsMatch = password == confirmPassword;
      _passwordStrength = _getPasswordStrength(password);
    });
  }

  bool _checkPasswordStrength(String password) {
    final passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return passwordRegex.hasMatch(password);
  }

  String _getPasswordStrength(String password) {
    if (password.isEmpty) return '';
    if (password.length < 8) return 'Weak';
    if (password.length < 12) return 'Medium';
    return 'Strong';
  }

  void _onNextPressed() {
    if (_isPasswordValid && _doPasswordsMatch) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const SetName()));
    }
  }

  Widget _buildTermsAndConditions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "By clicking Register, you agree to:",
        ),
        const SizedBox(height: 12),
        _buildTermItem(
          "Our Terms of Service",
          "This document outlines the legal agreement between you and [Your Shop Name] regarding your use of our mobile application and services.",
        ),
        _buildTermItem(
          "Our Privacy Policy",
          "This policy explains how we collect, use, and disclose your personal information when you use our app.",
        ),
        _buildTermItem(
          "Being 18 or Older",
          "You must be at least 18 years old or have parental consent to use our app and services.",
        ),
        _buildTermItem(
          "Providing Accurate Information",
          "You agree to provide accurate and complete information when creating an account and during the checkout process.",
        ),
      ],
    );
  }

  Widget _buildTermItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "$title: ",
                  ),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BasicAppBar(
        title: "Set Password",
        hasSettings: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create a secure password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              const Text("Password", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              MyInputField(
                hintText: "Enter a Password",
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Text(
                "Password strength: $_passwordStrength",
                style: TextStyle(
                  color: _passwordStrength == 'Strong'
                      ? Colors.green
                      : _passwordStrength == 'Medium'
                          ? Colors.orange
                          : Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              const Text("Confirm Password", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              MyInputField(
                hintText: "Confirm Password",
                controller: _confirmPasswordController,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              if (!_doPasswordsMatch &&
                  _confirmPasswordController.text.isNotEmpty)
                const Text(
                  "Passwords do not match",
                  style: TextStyle(color: Colors.red),
                ),
              const SizedBox(height: 24),
              ArrowButton(
                onPressed: (_isPasswordValid && _doPasswordsMatch)
                    ? _onNextPressed
                    : null,
                text: "Next",
                isDisabled: !(_isPasswordValid && _doPasswordsMatch),
                spaceBetween: false,
              ),
              const SizedBox(height: 20),
              _buildTermsAndConditions(),
            ],
          ),
        ),
      ),
    );
  }
}

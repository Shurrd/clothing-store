import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;

  const MyInputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff6D797F99)),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}

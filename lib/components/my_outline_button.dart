import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const MyOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(text),
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFF0F8FA),
          foregroundColor: Color(0xFFF84948),
          side: BorderSide(color: Color(0xFFF84948), width: 2),
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

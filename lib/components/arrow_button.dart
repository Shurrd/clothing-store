import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final bool spaceBetween;
  final bool isDisabled;

  const ArrowButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.spaceBetween = true,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isDisabled ? Colors.grey : const Color(0xFFF84948),
          foregroundColor: isDisabled ? Colors.grey[600] : Colors.white,
          disabledBackgroundColor: Colors.grey[300],
          disabledForegroundColor: Colors.grey[600],
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: spaceBetween
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(text),
              SizedBox(
                width: spaceBetween ? 0 : 10,
              ),
              const Icon(Icons.arrow_forward_sharp),
            ],
          ),
        ),
      ),
    );
  }
}

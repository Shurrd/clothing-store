import 'package:flutter/material.dart';

class LinearProgressBar extends StatelessWidget {
  final double value;

  const LinearProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(3),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation<Color>(
            Colors.black,
          ),
        ),
      ),
    );
  }
}

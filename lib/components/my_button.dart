import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final String? svgIcon;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.svgIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF84948),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  svgIcon!,
                  width: 20,
                  height: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

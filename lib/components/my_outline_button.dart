import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final String? socialIcon;

  const MyOutlineButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.socialIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFFF84948),
          side: BorderSide(color: Color(0xFFF84948), width: 2),
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (socialIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  socialIcon!,
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFFF84948), BlendMode.srcIn),
                ),
              ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

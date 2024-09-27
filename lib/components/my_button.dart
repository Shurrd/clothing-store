import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final String? socialIcon;
  final bool isDisabled;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.socialIcon,
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
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.grey[300],
          disabledForegroundColor: Colors.grey[600],
          padding: const EdgeInsets.symmetric(vertical: 15),
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
                  colorFilter: ColorFilter.mode(
                    isDisabled ? Colors.grey[600]! : Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

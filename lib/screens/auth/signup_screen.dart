import 'package:clothing_store/components/basic_app_bar.dart';
import 'package:clothing_store/components/my_button.dart';
import 'package:clothing_store/components/my_outline_button.dart';
import 'package:clothing_store/core/assets/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BasicAppBar(
        title: "Sign Up",
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Sign Up with:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              MyButton(
                onPressed: () {},
                text: "Apple",
                socialIcon: AppIcons.apple,
              ),
              const SizedBox(height: 16),
              MyOutlineButton(
                onPressed: () {},
                text: "Google",
                socialIcon: AppIcons.google,
              ),
              const SizedBox(height: 16),
              MyOutlineButton(
                onPressed: () {},
                text: "Facebook",
                socialIcon: AppIcons.facebook,
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(width: 14),
                  Text("Or Sign Up With"),
                  SizedBox(width: 14),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              MyOutlineButton(
                onPressed: () {},
                text: "Email",
                socialIcon: AppIcons.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

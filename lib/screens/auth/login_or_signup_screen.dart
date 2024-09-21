import 'package:clothing_store/components/my_button.dart';
import 'package:clothing_store/components/my_outline_button.dart';
import 'package:flutter/material.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.7,
                child: Image.asset(
                  "assets/images/auth/auth_image.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F8FA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        "You are not logged in.",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        "Login or Signup to access your profile.",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 14),
                      MyButton(onPressed: () {}, text: "Login"),
                      const SizedBox(height: 12),
                      MyOutlineButton(onPressed: () {}, text: "Signup"),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

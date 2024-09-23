import 'package:clothing_store/components/arrow_button.dart';
import 'package:clothing_store/components/linear_progress_bar.dart';
import 'package:clothing_store/screens/auth/login_or_signup_screen.dart';
import 'package:flutter/material.dart';

class EnableTracking extends StatelessWidget {
  const EnableTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LinearProgressBar(
                value: 3 / 3,
              ),
              const SizedBox(height: 80),
              const Text(
                "Personalize Your Experience",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              const Text(
                "Allow tracking across other apps and websites to see personalized recommendations.",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              ArrowButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginOrSignup()));
                },
                text: "Enable Tracking",
              )
            ],
          ),
        ),
      ),
    );
  }
}

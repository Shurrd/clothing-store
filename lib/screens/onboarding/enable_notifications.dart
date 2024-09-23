import 'package:clothing_store/components/arrow_button.dart';
import 'package:clothing_store/components/linear_progress_bar.dart';
import 'package:clothing_store/screens/onboarding/enable_locations.dart';
import 'package:flutter/material.dart';

class EnableNotifications extends StatelessWidget {
  const EnableNotifications({super.key});

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
                value: 1 / 3,
              ),
              const SizedBox(height: 80),
              const Text(
                "Never miss a deal!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              const Text(
                "Allow notifications to receive exclusive offers and style updates.",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              ArrowButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EnableLocations()));
                },
                text: "Enable Notifications",
              )
            ],
          ),
        ),
      ),
    );
  }
}

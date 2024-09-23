import 'package:clothing_store/components/arrow_button.dart';
import 'package:clothing_store/components/linear_progress_bar.dart';
import 'package:clothing_store/screens/onboarding/enable_tracking.dart';
import 'package:flutter/material.dart';

class EnableLocations extends StatelessWidget {
  const EnableLocations({super.key});

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
                value: 2 / 3,
              ),
              const SizedBox(height: 80),
              const Text(
                "Stay Ahead of the Curve",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              const Text(
                "Enable location to explore the hottest styles in your area.",
                style: TextStyle(fontSize: 16),
              ),
              const Spacer(),
              ArrowButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EnableTracking()));
                },
                text: "Enable Locations",
              )
            ],
          ),
        ),
      ),
    );
  }
}

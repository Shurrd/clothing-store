import 'package:clothing_store/screens/auth/login_or_signup_screen.dart';
import 'package:clothing_store/screens/home.dart';
import 'package:clothing_store/screens/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

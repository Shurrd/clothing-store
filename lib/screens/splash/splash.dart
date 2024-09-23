import 'package:clothing_store/core/assets/app_icons.dart';
import 'package:clothing_store/screens/onboarding/enable_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  void redirect() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => EnableNotifications()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF7168),
      body: Center(
        child: SvgPicture.asset(AppIcons.logo),
      ),
    );
  }
}

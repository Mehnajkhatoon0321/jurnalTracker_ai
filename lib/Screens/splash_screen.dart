import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:journaltrack_ai/Screens/Welcome/welcome.dart';
import 'package:journaltrack_ai/Screens/onboarding_screen.dart';
import 'package:journaltrack_ai/utils/app_colours.dart';
import 'package:journaltrack_ai/utils/widgets.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) =>  WelcomePage()),
              (Route<dynamic> route) => false
      ),
      // (Route<dynamic> route) => false)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColorBlue,
      body: Center(
        child: Image.asset(
          ImageAssets.splashlog, // Replace with your image path
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
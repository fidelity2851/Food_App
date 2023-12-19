import 'package:flutter/material.dart';
import 'package:food_app/commponents/logo.dart';
import 'package:food_app/screens/onboarding_screen.dart';
import 'package:food_app/commponents/background_pattern.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int delayTime = 2000;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(milliseconds: delayTime),
      () {
        // Navigate to Onboarding Screen
        Navigator.pushReplacement(
          (context),
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundPattern(
        winSize: winSize,
        content: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
          ],
        ),
      ),
    );
  }
}

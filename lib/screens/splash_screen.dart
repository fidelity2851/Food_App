import 'package:flutter/material.dart';
import 'package:food_app/commponents/logo.dart';
import 'package:food_app/screens/onboarding_screen.dart';
import 'package:food_app/commponents/background_pattern.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
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

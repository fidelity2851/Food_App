import 'package:flutter/material.dart';
import 'package:food_app/commponents/background_pattern.dart';
import 'package:food_app/commponents/custom_button.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/utitlity/variables.dart';

class CongratScreen extends StatelessWidget {
  const CongratScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundPattern(
        winSize: winSize,
        content: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/Illustration.png'),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Congrats!',
                    style: TextStyle(
                      color: AppColor.Primary,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Your Profile Is Ready To Use',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.Black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const CustomButton(title: 'Try Order'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

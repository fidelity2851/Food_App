import 'package:flutter/material.dart';
import 'package:food_app/commponents/custom_button.dart';
import 'package:food_app/screens/login_screen.dart';
import 'package:food_app/utitlity/variables.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: winSize.width,
        height: winSize.height,
        color: AppColor.White,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/illustration1.png'),
            ),
            Text(
              'Find Your Comfort \n Food Here',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.Black,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Enjoy a fast and smooth food delivery at \n your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.Black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const CustomButton(title: 'Next',),
            )
          ],
        ),
      ),
    );
  }
}


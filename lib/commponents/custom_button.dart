import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Container(
      width: winSize.width / 2,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.Primary, AppColor.Primary2],
          ),
          borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'Next',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

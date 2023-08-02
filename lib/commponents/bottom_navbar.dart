import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        bottom: 10,
        left: 10,
      ),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColor.White,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(),
      ),
    );
  }
}

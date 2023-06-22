import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage('assets/images/logo.png'),
        ),
        Text(
          'FoodNinja',
          style: TextStyle(
            color: AppColor.Primary,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Deliever Favorite Food',
          style: TextStyle(
            color: AppColor.Black,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}

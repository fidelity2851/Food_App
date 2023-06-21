import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: winSize.width,
        height: winSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}

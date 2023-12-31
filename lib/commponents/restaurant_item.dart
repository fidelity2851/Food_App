import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.time,
    this.space = 20,
  });

  final String imagePath;
  final String name;
  final String time;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: space),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: AppColor.White,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.Light,
            offset: const Offset(5, 5),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            width: 150,
            height: 100,
            fit: BoxFit.contain,
            image: AssetImage(imagePath),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: AppColor.Black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            time,
            style: TextStyle(
              color: AppColor.Black3,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.time,
  });

  final String imagePath;
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
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
          ]),
      child: Column(
        children: [
          Image(
              width: 140,
              height: 120,
              fit: BoxFit.contain,
              image: AssetImage(imagePath)),
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

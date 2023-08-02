import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';


class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.category,
    required this.price,
  });

  final String imagePath;
  final String name;
  final String category;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: AppColor.White,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColor.Light,
              offset: const Offset(0, 5),
              blurRadius: 30,
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 80,
            fit: BoxFit.contain,
            image: AssetImage(imagePath),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: AppColor.Black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                category,
                style: TextStyle(
                  color: AppColor.Black4,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: TextStyle(
              color: AppColor.Secondary,
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

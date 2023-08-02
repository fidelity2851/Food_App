import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    super.key,
    required this.title,
    required this.more,
  });

  final String title;
  final String more;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColor.Black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          more,
          style: TextStyle(
            color: AppColor.Secondary2,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

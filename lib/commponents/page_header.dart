import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';



class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Find Your \nFavorite Food',
          style: TextStyle(
            color: AppColor.Black,
            fontSize: 40,
            fontWeight: FontWeight.w800,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: AppColor.White,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: AppColor.Light,
                  offset: const Offset(15, 20),
                  blurRadius: 30,
                )
              ]),
          child: const Image(
            width: 30,
            image: AssetImage('assets/images/Notification.png'),
          ),
        )
      ],
    );
  }
}

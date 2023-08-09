import 'package:flutter/material.dart';
import 'package:food_app/commponents/search_box.dart';
import 'package:food_app/utitlity/variables.dart';

class SearchFilterBar extends StatelessWidget {
  const SearchFilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SearchBox(),
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: AppColor.Secondary4,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Image(
            width: 40,
            image: AssetImage('assets/images/Filter.png'),
          ),
        )
      ],
    );
  }
}

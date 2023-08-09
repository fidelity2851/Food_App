import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(
          horizontal: DefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: AppColor.Secondary4,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const Image(
              width: 40,
              image: AssetImage('assets/images/Search.png'),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: AppColor.Warning3,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    hintText: 'What do you want to order?',
                    hintStyle: TextStyle(
                      color: AppColor.Warning3,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}

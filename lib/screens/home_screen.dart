import 'package:flutter/material.dart';
import 'package:food_app/commponents/background_pattern.dart';
import 'package:food_app/utitlity/variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundPattern(
        winSize: winSize,
        content: Column(
          children: [
            const SizedBox(height: 50),
            Row(
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
                          offset: const Offset(15, 15),
                          blurRadius: 20,
                        )
                      ]),
                  child: const Image(
                    width: 30,
                    image: AssetImage('assets/images/Notification.png'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
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
                ),
                const SizedBox(width: 20),
                Container(
                  width: 60,
                  height: 60,
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
            )
          ],
        ),
      ),
    );
  }
}

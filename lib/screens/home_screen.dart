import 'package:flutter/material.dart';
import 'package:food_app/commponents/page_header.dart';
import 'package:food_app/commponents/page_pattern.dart';
import 'package:food_app/commponents/page_with_view_button.dart';
import 'package:food_app/commponents/restaurant_item.dart';
import 'package:food_app/utitlity/variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: PagePattern(
          winSize: winSize,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Page Header
              const PageHeader(),

              const SizedBox(height: 30),

              // Search Box and Filter Bar
              Row(
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
              ),

              const SizedBox(height: 30),

              // Advert Banner
              SizedBox(
                width: winSize.width,
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/Promo_Advertising.png'),
                ),
              ),

              const SizedBox(height: 30),

              // Title with More Button
              const TitleWithMoreButton(
                title: 'Nearest Restaurant',
                more: 'View More',
              ),

              const SizedBox(height: 20),

              // Popular Restaurants
              SizedBox(
                height: 255,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: DefaultPadding),
                  children: const [
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant1.png',
                      name: 'Vegan Resto',
                      time: '12 Mins',
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant1.png',
                      name: 'Vegan Resto',
                      time: '12 Mins',
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant1.png',
                      name: 'Vegan Resto',
                      time: '12 Mins',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

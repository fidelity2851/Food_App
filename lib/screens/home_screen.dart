import 'package:flutter/material.dart';
import 'package:food_app/commponents/bottom_navbar.dart';
import 'package:food_app/commponents/menu_item.dart';
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
      body: PagePattern(
        winSize: winSize,
        spaceAround: 0,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // Page Header
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: PageHeader(),
            ),

            const SizedBox(height: 30),

            // Search Box and Filter Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: Row(
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
            ),

            const SizedBox(height: 30),

            // Advert Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: SizedBox(
                width: winSize.width,
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/Promo_Advertising.png'),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Title with More Button
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: TitleWithMoreButton(
                title: 'Nearest Restaurant',
                more: 'View More',
              ),
            ),

            const SizedBox(height: 10),

            // Popular Restaurants
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  top: DefaultPadding,
                  left: DefaultPadding,
                  bottom: DefaultPadding,
                ),
                children: const [
                  RestaurantItem(
                    imagePath: 'assets/images/Restaurant1.png',
                    name: 'Vegan Resto',
                    time: '12 Mins',
                  ),
                  RestaurantItem(
                    imagePath: 'assets/images/Restaurant2.png',
                    name: 'Healthy Food',
                    time: '8 Mins',
                  ),
                  RestaurantItem(
                    imagePath: 'assets/images/Restaurant3.png',
                    name: 'Good Food',
                    time: '12 Mins',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Title with More Button
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: TitleWithMoreButton(
                title: 'Popular Menu',
                more: 'View More',
              ),
            ),

            const SizedBox(height: 30),

            // Popular Menu
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: Column(
                children: [
                  MenuItem(
                    imagePath: 'assets/images/Menu1.png',
                    name: 'Herbal Pancake',
                    category: 'Warung Herbal',
                    price: '17',
                  ),
                  MenuItem(
                    imagePath: 'assets/images/Menu2.png',
                    name: 'Fruit Salad',
                    category: 'Warung Herbal',
                    price: '17',
                  ),
                  MenuItem(
                    imagePath: 'assets/images/Menu3.png',
                    name: 'Green Noddle',
                    category: 'Warung Herbal',
                    price: '17',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

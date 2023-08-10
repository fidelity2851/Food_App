import 'package:flutter/material.dart';
import 'package:food_app/commponents/bottom_navbar.dart';
import 'package:food_app/commponents/page_header.dart';
import 'package:food_app/commponents/page_pattern.dart';
import 'package:food_app/commponents/restaurant_item.dart';
import 'package:food_app/commponents/search_filter_bar.dart';
import 'package:food_app/commponents/title_with_more_button.dart';
import 'package:food_app/utitlity/variables.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: PagePattern(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: SearchFilterBar(),
              ),

              const SizedBox(height: 30),

              // Title with More Button
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: TitleWithMoreButton(
                  title: 'Popular Restaurant',
                  more: '',
                  page: RestaurantScreen(),
                ),
              ),

              const SizedBox(height: 10),

              // Popular Restaurants
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 0.85,
                  padding: const EdgeInsets.symmetric(
                    vertical: DefaultPadding,
                    horizontal: DefaultPadding,
                  ),
                  children: const [
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant1.png',
                      name: 'Vegan Resto',
                      time: '12 Mins',
                      space: 0,
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant2.png',
                      name: 'Healthy Food',
                      time: '8 Mins',
                      space: 0,
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant3.png',
                      name: 'Good Food',
                      time: '12 Mins',
                      space: 0,
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant1.png',
                      name: 'Vegan Resto',
                      time: '12 Mins',
                      space: 0,
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant2.png',
                      name: 'Healthy Food',
                      time: '8 Mins',
                      space: 0,
                    ),
                    RestaurantItem(
                      imagePath: 'assets/images/Restaurant3.png',
                      name: 'Good Food',
                      time: '12 Mins',
                      space: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

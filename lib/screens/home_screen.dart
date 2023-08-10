import 'package:flutter/material.dart';
import 'package:food_app/commponents/bottom_navbar.dart';
import 'package:food_app/commponents/menu_item.dart';
import 'package:food_app/commponents/page_header.dart';
import 'package:food_app/commponents/page_pattern.dart';
import 'package:food_app/commponents/title_with_more_button.dart';
import 'package:food_app/commponents/restaurant_item.dart';
import 'package:food_app/commponents/search_filter_bar.dart';
import 'package:food_app/screens/menu_screen.dart';
import 'package:food_app/screens/restaurant_screen.dart';
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
        content: SingleChildScrollView(
          child: Column(
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
                  page: RestaurantScreen(),
                ),
              ),

              const SizedBox(height: 10),

              // Popular Restaurants
              SizedBox(
                height: 250,
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
                  page: MenuScreen(),
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
                      price: '5',
                    ),
                    MenuItem(
                      imagePath: 'assets/images/Menu3.png',
                      name: 'Green Noddle',
                      category: 'Warung Herbal',
                      price: '15',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

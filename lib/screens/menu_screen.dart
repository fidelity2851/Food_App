import 'package:flutter/material.dart';
import 'package:food_app/commponents/bottom_navbar.dart';
import 'package:food_app/commponents/menu_item.dart';
import 'package:food_app/commponents/page_header.dart';
import 'package:food_app/commponents/page_pattern.dart';
import 'package:food_app/commponents/search_filter_bar.dart';
import 'package:food_app/commponents/title_with_more_button.dart';
import 'package:food_app/utitlity/variables.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
                  title: 'Popular Menu',
                ),
              ),

              const SizedBox(height: 10),

              // Popular Restaurants
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.symmetric(
                    vertical: DefaultPadding,
                    horizontal: DefaultPadding,
                  ),
                  children: const [
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
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

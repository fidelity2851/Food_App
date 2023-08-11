import 'package:flutter/material.dart';
import 'package:food_app/commponents/custom_button.dart';
import 'package:food_app/commponents/filter_text.dart';
import 'package:food_app/commponents/page_header.dart';
import 'package:food_app/commponents/page_pattern.dart';
import 'package:food_app/commponents/search_box.dart';
import 'package:food_app/commponents/title_with_more_button.dart';
import 'package:food_app/utitlity/variables.dart';

class SearchFilterScreen extends StatelessWidget {
  const SearchFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: PagePattern(
          winSize: winSize,
          spaceAround: 0,
          content: const Column(
            children: [
              SizedBox(height: 50),

              // Page Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: PageHeader(),
              ),

              SizedBox(height: 30),

              // Search Box and Filter Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: SearchBox(),
              ),

              SizedBox(height: 30),

              // Title with More Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: TitleWithMoreButton(
                  title: 'Type',
                ),
              ),

              SizedBox(height: 20),

              // Filter Text
              Row(
                children: [
                  FilterText(
                    title: 'Restaurant',
                  ),
                  FilterText(
                    title: 'Menu',
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Title with More Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: TitleWithMoreButton(
                  title: 'Location',
                ),
              ),

              SizedBox(height: 20),

              // Filter Text
              Row(
                children: [
                  FilterText(
                    title: '1km',
                  ),
                  FilterText(
                    title: '>10km',
                  ),
                  FilterText(
                    title: '<10km',
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Title with More Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: TitleWithMoreButton(
                  title: 'Food',
                ),
              ),

              SizedBox(height: 20),

              // Filter Text
              Row(
                children: [
                  FilterText(
                    title: 'Cake',
                  ),
                  FilterText(
                    title: 'Soup',
                  ),
                  FilterText(
                    title: 'Main Course',
                  ),
                ],
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColor.White,
        padding: const EdgeInsets.all(DefaultPadding),
        child: const CustomButton(title: 'Search'),
      ),
    );
  }
}

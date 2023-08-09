import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/utitlity/variables.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        bottom: 10,
        left: 10,
      ),
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
        decoration: BoxDecoration(
          color: AppColor.White,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: AppColor.Primary4,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Image(
                      width: 25,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Home.png'),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: AppColor.Black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Image(
              width: 30,
              fit: BoxFit.contain,
              image: AssetImage('assets/images/Profile.png'),
            ),
            Stack(
              children: [
                const Image(
                  width: 30,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/Buy.png'),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '7',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColor.White,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                const Image(
                  width: 30,
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/Chat.png'),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

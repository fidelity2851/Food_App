import 'package:flutter/material.dart';
import 'package:food_app/screens/flash_screen.dart';

// Initialize Flutter Main Function
void main() => runApp(const MovieApp());

// Initialize Material App
class MovieApp extends StatelessWidget {
  const MovieApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FlashScreen(),
      ),
    );
  }
}

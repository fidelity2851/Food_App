import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({
    super.key,
    required this.winSize,
    required this.content,
  });

  final Size winSize;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
      width: winSize.width,
      height: winSize.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: content,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/utitlity/variables.dart';

class PagePattern extends StatelessWidget {
  const PagePattern({
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
          image: AssetImage('assets/images/pattern2.png'),
          fit: BoxFit.contain,
          alignment: Alignment.topRight,
        ),
      ),
      child: content,
    );
  }
}

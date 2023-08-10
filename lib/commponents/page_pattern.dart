import 'package:flutter/material.dart';

class PagePattern extends StatelessWidget {
  const PagePattern({
    super.key,
    required this.winSize,
    required this.spaceAround,
    required this.content,
  });

  final Size winSize;
  final double spaceAround;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: spaceAround),
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

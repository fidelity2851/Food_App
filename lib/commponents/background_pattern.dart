import 'package:flutter/material.dart';

class BackgoundPattern extends StatelessWidget {
  const BackgoundPattern({
    super.key,
    required this.winSize,
    required this.content,
  });

  final Size winSize;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
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

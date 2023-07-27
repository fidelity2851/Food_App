import 'package:flutter/material.dart';


class InputBox extends StatelessWidget {
  const InputBox({
    super.key,
    required this.placeholder,
  });

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

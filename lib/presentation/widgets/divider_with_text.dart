import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DividerWithText extends StatelessWidget {
  String text;
  DividerWithText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            indent: 20.0,
            endIndent: 10.0,
            thickness: 4,
            color: Colors.black,
          ),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blueGrey),
        ),
        const Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 20.0,
            thickness: 4,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

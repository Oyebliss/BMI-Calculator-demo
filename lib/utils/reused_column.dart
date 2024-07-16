import 'package:flutter/material.dart';

import 'constants.dart';

class ReIconColumn extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const ReIconColumn({super.key, this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

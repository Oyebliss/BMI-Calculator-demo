import 'package:flutter/material.dart';

class ReusedColumn extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const ReusedColumn({super.key, this.icon, this.label});

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
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xff8D8E98),
          ),
        ),
      ],
    );
  }
}

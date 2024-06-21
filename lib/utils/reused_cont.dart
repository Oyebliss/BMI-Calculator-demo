import 'package:flutter/material.dart';

class ReusedContainer extends StatelessWidget {
  final Color colour;
  const ReusedContainer({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

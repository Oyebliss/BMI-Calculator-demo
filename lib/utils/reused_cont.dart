import 'package:flutter/material.dart';

class ReusedContainer extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  const ReusedContainer({super.key, required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}

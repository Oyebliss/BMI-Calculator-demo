import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;

  const ReusedCard({
    super.key,
    required this.colour,
    this.cardChild,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}

import 'package:bmi_cal/utils/constants.dart';
import 'package:flutter/material.dart';

class BmiButton extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;
  const BmiButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
        ),
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            buttonText,
            style: kLargeLabel,
          ),
        ),
      ),
    );
  }
}

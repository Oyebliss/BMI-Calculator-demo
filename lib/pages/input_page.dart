import 'package:bmi_cal/utils/reused_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants.dart';
import '../utils/reused_column.dart';

// creating gender Enums
enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
          child: Text(
            'B.M.I CALCULATOR',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild: const ReIconColumn(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectedGender == GenderType.male
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild: const ReIconColumn(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selectedGender == GenderType.female
                        ? kActiveColor
                        : kInactiveColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusedCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: kLargeLabel,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    cardChild: Column(),
                    colour: kActiveColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    cardChild: Column(),
                    colour: kActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: kBottomContainerColor,
            ),
            margin: const EdgeInsets.only(top: 10),
            height: kBottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

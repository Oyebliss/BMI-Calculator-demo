import 'package:bmi_cal/utils/reused_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/reused_column.dart';

const bottomContainerHeight = 80.0;
const bodyActiveColor = Color(0xff1D1E33);
const bodyInactiveColor = Color(0xff111328);
const bottomContainerColor = Color(0xffEA1E63);

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
                    cardChild: const ReusedColumn(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectedGender == GenderType.male
                        ? bodyActiveColor
                        : bodyInactiveColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild: const ReusedColumn(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selectedGender == GenderType.female
                        ? bodyActiveColor
                        : bodyInactiveColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusedCard(
              colour: bodyActiveColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    cardChild: Column(),
                    colour: bodyActiveColor,
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    cardChild: Column(),
                    colour: bodyActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: bottomContainerColor,
            ),
            margin: const EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

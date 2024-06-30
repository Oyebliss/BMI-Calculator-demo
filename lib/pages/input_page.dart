import 'package:bmi_cal/utils/reused_cont.dart';
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
  Color maleCardColor = bodyInactiveColor;
  Color femaleCardColor = bodyInactiveColor;

  void updateColor(GenderType selectedGender) {
    // if male card got pressed
    if (selectedGender == GenderType.male) {
      if (maleCardColor == bodyInactiveColor) {
        maleCardColor = bodyActiveColor;
        femaleCardColor = bodyInactiveColor;
      } else {
        maleCardColor = bodyInactiveColor;
      }
    }
    // if female card got pressed
    if (selectedGender == GenderType.female) {
      if (femaleCardColor == bodyInactiveColor) {
        femaleCardColor = bodyActiveColor;
        maleCardColor = bodyInactiveColor;
      } else {
        femaleCardColor = bodyInactiveColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.male);
                      });
                    },
                    child: ReusedContainer(
                      cardChild: ReusedColumn(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      colour: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.female);
                      });
                    },
                    child: ReusedContainer(
                      cardChild: ReusedColumn(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusedContainer(
              colour: bodyActiveColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedContainer(
                    cardChild: Column(),
                    colour: bodyActiveColor,
                  ),
                ),
                Expanded(
                  child: ReusedContainer(
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

import 'package:bmi_cal/utils/reused_cont.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
          child: Text(
            'B.M.I CAlCULATOR',
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedContainer(
                    colour: Color(0xff1D1E32),
                  ),
                ),
                Expanded(
                  child: ReusedContainer(
                    colour: Color(0xff1D1E32),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusedContainer(
              colour: Color(0xff1D1E32),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusedContainer(
                    colour: Color(0xff1D1E32),
                  ),
                ),
                Expanded(
                  child: ReusedContainer(
                    colour: Color(0xff1D1E32),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffEA1E63),
            ),
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain(this.height, this.weight);

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your weight is higher than normal body weight, ry to hit the gym for more exercise and lessen any fatty food. ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight, maintain it so you won\'t get overweight.';
    } else {
      return 'Your weight is lesser than it should be, try to eat more and get more diet.';
    }
  }
}

import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCalculatorHead() {
    _bmi = weight / pow(height/100, 2);
    if (_bmi >= 25) {
      return 'OVER';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER';
    }
  }
  String getCalculatorDescription() {
    _bmi = weight / pow(height/100, 2);
    if (_bmi >= 25) {
      return '肥満型';
    } else if (_bmi >= 18.5) {
      return '標準型';
    } else {
      return '痩せ型';
    }
  }


}
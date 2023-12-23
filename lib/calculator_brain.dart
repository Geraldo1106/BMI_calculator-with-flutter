import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(Set<Object> set, {required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  void calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getResult() {
    // Ensure _bmi is initialized
    if (_bmi.isNaN) {
      calculateBMI();
    }

    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    // Ensure _bmi is initialized
    if (_bmi.isNaN) {
      calculateBMI();
    }

    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

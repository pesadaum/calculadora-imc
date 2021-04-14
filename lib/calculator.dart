import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final height;
  final weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5)
      return 'Peso normal';
    else
      return 'Abaixo do peso';
  }

  String getInterpret() {
    if (_bmi >= 25) {
      return 'Você deve reduzir a alimentação e/ou procurar uma dieta';
    } else if (_bmi > 18.5)
      return 'Seu índice está normal, continue com a dieta e/ou exercícios';
    else
      return 'Você deve melhorar sua alimentação com mais nutrientes';
  }
}

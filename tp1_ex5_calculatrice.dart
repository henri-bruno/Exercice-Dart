import 'dart:io';

double calculer(double a, double b, String op) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) throw ArgumentError('Erreur : division par zéro.');
      return a / b;
    default:
      throw ArgumentError("Erreur : opérateur '$op' non autorisé. Utilisez +, -, * ou /.");
  }
}

void main() {
  stdout.write('Entrez le premier nombre : ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Entrez le deuxième nombre : ');
  double b = double.parse(stdin.readLineSync()!);

  for (String op in ['+', '-', '*', '/']) {
    try {
      print('$a $op $b = ${calculer(a, b, op)}');
    } catch (e) {
      print(e);
    }
  }
}

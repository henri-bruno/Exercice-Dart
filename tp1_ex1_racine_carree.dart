import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    stdout.write('Entrez une valeur positive (0 pour terminer) : ');
    double valeur = double.parse(stdin.readLineSync()!);

    if (valeur == 0) {
      print('Fin du programme.');
      break;
    } else if (valeur < 0) {
      print('Erreur, la valeur ne peut pas etre negative.');
    } else {
      print('La racine de $valeur est : ${sqrt(valeur).toStringAsFixed(6)}.');
    }
  }
}

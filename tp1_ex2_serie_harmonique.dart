import 'dart:io';

double serieHarmonique(int n) {
  double somme = 0;
  for (int k = 1; k <= n; k++) {
    somme += 1.0 / k;
  }
  return somme;
}

void main() {
  stdout.write('Entrez la valeur de n : ');
  int n = int.parse(stdin.readLineSync()!);
  print('La somme des $n premiers termes de la série harmonique est : ${serieHarmonique(n)}');
}

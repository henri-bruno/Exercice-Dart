import 'dart:io';

int pgcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  stdout.write('Entrez le premier entier : ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Entrez le deuxième entier : ');
  int b = int.parse(stdin.readLineSync()!);
  print('PGCD($a, $b) = ${pgcd(a, b)}');
}

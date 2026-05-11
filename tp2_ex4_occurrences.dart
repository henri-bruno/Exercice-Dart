import 'dart:io';

// Sans utiliser les méthodes de String, on traite la chaîne comme une liste de codes
int compterOccurrences(List<int> chaine, int caractere) {
  int count = 0;
  for (int c in chaine) {
    if (c == 0) break; // équivalent du '\0' en C
    if (c == caractere) count++;
  }
  return count;
}

void main() {
  stdout.write('Entrez une chaîne de caractères : ');
  String input = stdin.readLineSync()!;

  stdout.write('Entrez le caractère à rechercher : ');
  String charInput = stdin.readLineSync()!;

  List<int> chaine = input.codeUnits.toList()..add(0);
  int caractere = charInput.codeUnitAt(0);

  int occurrences = compterOccurrences(chaine, caractere);
  print("Le caractère '${charInput[0]}' apparaît $occurrences fois dans la chaîne.");
}

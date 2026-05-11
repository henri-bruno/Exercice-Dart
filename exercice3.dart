// Exercice 3
// Écrivez une fonction en Dart qui prend en entrée une liste de nombres entiers
// et retourne la plus grande différence entre deux nombres consécutifs de la liste.

int plusGrandeDifference(List<int> nombres) {
  if (nombres.length < 2) {
    throw ArgumentError('La liste doit contenir au moins deux éléments.');
  }

  int maxDifference = 0;

  for (int i = 0; i < nombres.length - 1; i++) {
    int difference = (nombres[i + 1] - nombres[i]).abs();
    if (difference > maxDifference) {
      maxDifference = difference;
    }
  }

  return maxDifference;
}

void main() {
  // Exemple de test
  List<int> nombres = [3, 8, 15, 1, 20];
  print('La plus grande différence est : ${plusGrandeDifference(nombres)}');
}

// Exercice 1
// Écrivez une fonction en Dart qui prend en entrée une liste de nombres entiers
// et retourne le nombre le plus fréquent dans la liste.

int nombreLePlusFrequent(List<int> nombres) {
  Map<int, int> frequences = {};

  for (var nombre in nombres) {
    if (frequences.containsKey(nombre)) {
      frequences[nombre] = frequences[nombre]! + 1;
    } else {
      frequences[nombre] = 1;
    }
  }

  int maxFrequence = 0;
  int nombreFrequent = nombres[0];

  frequences.forEach((key, value) {
    if (value > maxFrequence) {
      maxFrequence = value;
      nombreFrequent = key;
    }
  });

  return nombreFrequent;
}

void main() {
  // Exemple de test
  List<int> nombres = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5];
  print('Le nombre le plus fréquent est : ${nombreLePlusFrequent(nombres)}');
}

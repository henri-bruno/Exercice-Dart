// En Dart, on simule le passage par référence avec une liste à un élément
void ajouter(int valeur, List<int> variable) {
  variable[0] += valeur;
}

void main() {
  List<int> p = [5];
  List<int> n = [10];

  print('Avant : p = ${p[0]}, n = ${n[0]}');
  ajouter(2 * p[0], n);
  print('Après ajouter(2*p, n) : n = ${n[0]}');
}

void sommTableau(List<double> tableau, List<double> resultat) {
  resultat[0] = 0;
  for (double v in tableau) {
    resultat[0] += v;
  }
}

void main() {
  List<double> tableau = [1.5, 2.3, 3.7, 4.1, 5.9];
  List<double> somme = [0];

  sommTableau(tableau, somme);
  print('La somme des éléments est : ${somme[0]}');
}

// Exercice 2
// Écrivez une fonction en Dart qui prend en entrée une chaîne de caractères
// contenant des lettres en majuscules, des lettres en minuscules, des chiffres et des caractères spéciaux.
// La fonction doit retourner la chaîne de caractères en inversant la casse des lettres (majuscules en minuscules et vice versa),
// en inversant l'ordre des chiffres et en laissant les caractères spéciaux inchangés.

String transformerChaine(String chaine) {
  List<String> lettres = chaine.split('');
  List<String> chiffres = lettres
      .where((c) => int.tryParse(c) != null)
      .toList();
  chiffres = chiffres.reversed.toList();

  int indexChiffre = 0;
  String resultat = '';

  for (var lettre in lettres) {
    if (int.tryParse(lettre) != null) {
      resultat += chiffres[indexChiffre];
      indexChiffre++;
    } else if (RegExp(r'[a-z]').hasMatch(lettre)) {
      resultat += lettre.toUpperCase();
    } else if (RegExp(r'[A-Z]').hasMatch(lettre)) {
      resultat += lettre.toLowerCase();
    } else {
      resultat += lettre;
    }
  }

  return resultat;
}

void main() {
  // Exemple de test
  String chaine = "aB1cD2eF3!@#";
  print('La chaîne transformée est : ${transformerChaine(chaine)}');
}

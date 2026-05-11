int _compteur = 0;

void compterAppel() {
  _compteur++;
  print('Appel de fonction numero $_compteur');
}

void main() {
  compterAppel();
  compterAppel();
  compterAppel();
  compterAppel();
  compterAppel();
}

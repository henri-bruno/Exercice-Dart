void main() {
  List<double> t1 = [3.5, -1.2, 7.8, 2.1, -4.0, 6.3, 0.9, -2.5, 5.4, 1.1];
  List<double> t2 = [-3.0, 4.5, -1.8, 7.2, -0.5, 2.9, -6.1, 3.3, -2.2, 8.0];

  double min = t1[0];
  double max = t1[0];
  for (double v in t1) {
    if (v < min) min = v;
    if (v > max) max = v;
  }
  print('Valeur minimale de t1 : $min');
  print('Valeur maximale de t1 : $max');

  int index = 0;
  for (double v in t2) {
    if (v > 0) {
      if (index < t1.length) {
        t1[index] = v;
        index++;
      }
    }
  }
  while (index < t1.length) {
    t1[index] = 0;
    index++;
  }

  print('t1 après recopie des positifs de t2 : $t1');
}

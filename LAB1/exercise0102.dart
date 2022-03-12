import 'dart:math';

void main(List<String> args) {
  int n = 20;
  int i = 0;
  var rand = Random();
  List<int> lista = [];
  while (i < n) {
    int num = rand.nextInt(n);
    print(num);
    if (num <= 10) {
      lista.add(num);
      i++;
    } else {
      continue;
    }
  }
  print(lista);
}

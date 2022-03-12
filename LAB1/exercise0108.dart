import 'dart:math';

void main(List<String> args) {
  int num = 153;
  String s = num.toString();
  int lunghezza = s.length;
  //print(lunghezza);
  List<String> lista1 = [];
  for (var i = 0; i < lunghezza; i++) {
    lista1.add(s[i]);
  }
  //print(lista1);
  List<int> lista2 = lista1.map(int.parse).toList();
  //print(lista2);
  int lunghezzaLista = lista2.length;
  double somma = 0;
  for (var i = 0; i < lunghezzaLista; i++) {
    somma = somma + pow(lista2[i], lunghezzaLista);
  }
  print(somma.toInt());
  if (somma == num) {
    print("Armstrong number");
  } else {
    print("No Armstrong number");
  }
}

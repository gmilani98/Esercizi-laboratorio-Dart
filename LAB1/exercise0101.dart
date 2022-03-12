import 'dart:math';

void main(List<String> args) {
  int? n = 5;
  print("For loop");
  for (var i = 0; i < n; i++) {
    print("${i}^4 = ${pow(i, 4)}");
  }
  print("While loop");
  int j = 0;
  while (n > j) {
    print("${j}^4 = ${pow(j, 4)}");
    j = j + 1;
  }
}

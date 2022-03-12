List<String> maneggiare(String frase) {
  int lunghezza = frase.length;
  List<String> parola = [];
  for (var i = 0; i < lunghezza; i++) {
    if (frase[i] == frase[i].toUpperCase()) {
      parola.add(frase[i].toLowerCase());
    } else {
      if (frase[i] == frase[i].toLowerCase()) {
        parola.add(frase[i].toUpperCase());
      } else {
        continue;
      }
    }
  }
  return parola;
}

void main(List<String> args) {
  String s = "I loVe NY";
  print(maneggiare(s).join());
}

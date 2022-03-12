bool palindroma(String frase) {
  int t = 0;
  int f = 0;
  frase = frase.replaceAll(" ", "").toLowerCase();
  //print(frase);
  int lunghezza = frase.length;
  //print(lunghezza);
  for (var i = 0; i < lunghezza; i++) {
    if (frase[i] == frase[(lunghezza - 1) - i]) {
      t++;
    } else {
      f++;
    }
  }
  if (t != 0) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> args) {
  String name = "Eco vana voce";
  print(palindroma(name));
}

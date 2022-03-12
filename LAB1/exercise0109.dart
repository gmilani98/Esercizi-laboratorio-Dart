String acronimo(String frase) {
  int lunghezza = frase.length;
  List<int> posizioni = [];
  List<String> lettere = [];
  for (var i = 0; i < lunghezza; i++) {
    if (frase[i] == " ") {
      posizioni.add(i);
    } else {
      continue;
    }
  }
  //print(posizioni);
  int lunghezza_lista = posizioni.length;
  if (frase[0] != " ") {
    for (var j = 0; j < lunghezza_lista; j++) {
      lettere.add(frase[posizioni[j] + 1]);
    }
    lettere = [frase[0], ...lettere];
  } else {
    for (var j = 0; j < lunghezza_lista; j++) {
      lettere.add(frase[posizioni[j] + 1]);
    }
  }
  return lettere.join().replaceAll(" ", "");
}

void main(List<String> args) {
  String name = "Team Jumbo Visma";
  print(name);
  print(acronimo(name));
}

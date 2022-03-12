String funzioneMaiuscola(String frase, [bool up = false]) {
  if (up == true) {
    return frase.toUpperCase();
  } else {
    return frase.toLowerCase();
  }
}

void main(List<String> args) {
  String name = "I love Washington DC";
  print(funzioneMaiuscola(name, true));
}

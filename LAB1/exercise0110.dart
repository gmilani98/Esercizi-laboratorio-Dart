bool combinazione(String frase) {
  List<String> parentesi = ["{", "[", "(", ")", "]", "}"];
  List<String> temp = [];
  int lunghezza_parentesi = parentesi.length;
  int lunghezza_frase = frase.length;
  int i = 0;
  int j = 0;
  //List<int> conta = [];
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int f = 0;
  for (var i = 0; i < lunghezza_frase; i++) {
    switch (frase[i]) {
      case "{":
        a++;
        break;
      case "[":
        b++;
        break;
      case "(":
        c++;
        break;
      case ")":
        d++;
        break;
      case "]":
        e++;
        break;
      case "}":
        f++;
        break;
    }
  }
  if (a > 1 || b > 1 || c > 1 || d > 1 || e > 1 || f > 1) {
    return false;
  } else {
    while (i < lunghezza_parentesi) {
      if (frase[j] == parentesi[i]) {
        temp.add(frase[j]);
        i++;
        j++;
        //print(j);
        if (j >= lunghezza_frase) {
          return false;
        } else {
          continue;
        }
      } else {
        j++;
        //print(j);
        if (j >= lunghezza_frase) {
          return false;
        } else {
          continue;
        }
      }
    }
    //print(temp.join());
    //print(parentesi.join());
    if (temp.join() == parentesi.join()) {
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  String name = "{this[is(o)]}k";
  print(name);
  print(combinazione(name));
}

void main(List<String> args) {
  int n = 2;
  if (n % 2 == 0) {
    print("Odd");
  } else {
    if (n > 2 && n < 5) {
      print("Small even");
    } else {
      if (n > 6 && n < 20) {
        print("Medium even");
      } else {
        if (n > 20) {
          print("Big even");
        }
      }
    }
  }
}

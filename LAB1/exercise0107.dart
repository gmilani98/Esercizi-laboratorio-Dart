int fibonacci(int m) {
  if (m < 0) {
    return 0;
  } else {
    if (m == 1 || m == 2) {
      return 1;
    } else {
      return fibonacci(m - 1) + fibonacci(m - 2);
    }
  }
}

void main(List<String> args) {
  int n = 20;
  print(fibonacci(n));
}

Future<bool> fetchUserRole() async {
  return Future.delayed(const Duration(seconds: 3), () => isAdminUser("admin"));
}

Future<bool> isAdminUser(String parola) async {
  if (parola == "admin") {
    return true;
  } else {
    return false;
  }
}

Future<void> main(List<String> args) async {
  print("Checking if user is an admin...");
  final p = await fetchUserRole();
  p ? print("Ok, access granted") : print("Access deined");
}//main

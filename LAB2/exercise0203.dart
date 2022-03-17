Future<String> fetchUserRole() async {
  return Future.delayed(const Duration(seconds: 3), () => "admin");
}

Future<void> main(List<String> args) async {
  print("Fetching user role...");
  final p = await fetchUserRole();
  //print("Fetching user role...");
  print("The user is an $p");
}

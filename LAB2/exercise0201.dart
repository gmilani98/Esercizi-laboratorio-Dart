class Vehicle {
  final double max_speed;
  bool is_moving = false;
  int mileage = 0;

  Vehicle({required this.max_speed});
  Vehicle.used({required this.max_speed, required this.mileage});

  void start() {
    is_moving = true;
  }

  void stop() {
    is_moving = false;
  }

  @override
  String toString() {
    return "Velocità massima $max_speed, Mileage $mileage, Si muove? $is_moving";
  }

  int addMiles({required int miles}) {
    return miles + mileage;
  }
}

void main(List<String> args) {
  var veicolo1 = Vehicle(max_speed: 90);
  var veicolo2 = Vehicle.used(max_speed: 300, mileage: 13);
  print("Veicolo1:\n $veicolo1");
  print("Veicolo2:\n $veicolo2");
  veicolo2.start();
  print("Veicolo2:\n $veicolo2");
  print(veicolo2.addMiles(miles: 12));
}

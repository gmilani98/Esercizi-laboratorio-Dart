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

class Bus extends Vehicle {
  int current_number_of_passengers = 0;
  final int max_number_of_passengers = 20;
  Bus({required double max_speed}) : super(max_speed: max_speed);
  Bus.used({required double max_speed, required int mileage})
      : super.used(max_speed: max_speed, mileage: mileage);

  int incrementa_passeggeri({required int pass}) {
    if (current_number_of_passengers + pass > max_number_of_passengers) {
      current_number_of_passengers = max_number_of_passengers;
    } else {
      current_number_of_passengers = current_number_of_passengers + pass;
    }
    return current_number_of_passengers;
  }

  @override
  String toString() {
    return 'Bus(is_moving : $is_moving, max_speed : $max_speed, mileage : $mileage, current_number_of_passengers : $current_number_of_passengers, max_number_of_passengers : $max_number_of_passengers)';
  }
}

void main(List<String> args) {
  var bus1 = Bus(max_speed: 90);
  var bus2 = Bus.used(max_speed: 150, mileage: 0);
  bus2.start();
  bus1.stop();
  bus2.incrementa_passeggeri(pass: 2);
  bus2.incrementa_passeggeri(pass: 24);

  print(bus1);
  print(bus2);
}

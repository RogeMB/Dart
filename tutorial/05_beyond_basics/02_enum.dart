void main(List<String> args) {
  Rates rate = Rates.EUR;
  String rateValue = rate.name;
  print("Value: $rateValue");

  switch (rate) {
    case Rates.USD:
      print('Price in USD');
      break;
    case Rates.EUR:
      print('Price in EUR');
      break;
    case Rates.JPY:
      print('Price in JPY');
      break;
    default:
      print(Rates.EUR.name); // access to the enum value
  }
}

//* Uppercase in the first letter
enum Rates { USD, EUR, JPY }

//* Example of a Enum class:
enum Vehicle implements Comparable<Vehicle> {
  // All instance variables must be final and must be declared in the beginning of the declaration..
  // All generative constructors must be constant.
  // Factory constructors can only return one of the fixed, known enum instances.
  // No overrides for index, hashCode or equality operators.

  car(tires: 4, passengers: 5, carbonPerKm: 400),
  bus(tires: 6, passengers: 50, carbonPerKm: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKm: 0);

  const Vehicle(
      {required this.tires,
      required this.passengers,
      required this.carbonPerKm});

  final int tires;
  final int passengers;
  final int carbonPerKm;

  int get carbonFootPrint => (carbonPerKm / passengers).round();
  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) {
    return carbonFootPrint - other.carbonFootPrint;
  }
}

void main() {
  var cities = [
    'Dublin',
    'Seville',
    'New York',
    1,
    true,
    3.3
  ]; // try to  avoid Object List. Try to create only one datatype in a list, use Generics.
  print(cities);

  // * A compile-time constant list --> add const keyword before the list literal.
  final List<String> cityList = const [
    'Dublin',
    'Seville',
    'New York'
  ]; // starting from 0
  cityList.add('France');
  cityList.add('France');
  cityList.add('France');
  cityList.add('France');
  cityList.add('France');

  print(cityList);
  // cityList[0] = 1;   This is not allowed because it is not a String and Dart is a type-safe language.
}

void main() {
  String cityOne = 'Seville';
  String cityTwo = 'Madrid';

  print(cityOne == cityTwo);
  print(cityOne != cityTwo);

  int x = 10;
  int y = 9;
  int w = 11;

  print(x > y);
  print(x < y);
  print(x >= y);
  print(x >= y);

  String z = '10';

  print(z is int);
  print(z is! int);

  if (x > y && x > w) {
    print('True');
  } else {
    print('False');
  }

  if (x > y || x > w) {
    print('True');
  } else {
    print('False');
  }
}

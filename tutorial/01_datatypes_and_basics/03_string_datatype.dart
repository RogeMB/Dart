void main() {
  String name = 'Roge';

  String lastName = "Mohi";

  String name3 = "O'Connor"; // 'O\'Connor'  --> skip the single quote

  String name4 = '''
  Hello Roge,
  How are you doing today?
  Dart is awesome!
  $name3
  See you soon!
  ''';

  String fullName = '$name $lastName';

  print(name3);
  print(name4);
  print(fullName);
}

void main(List<String> args) {
  String wrongName = ' ro ge ';

  //* this variable (wrongName) is passed by value and not by reference.
  //* Dart assign it to another space in memory.
  String rightName = capitalize(wrongName);

  print(wrongName);
  print(rightName);

  Map<String, String> personOne = {'name': 'ro ge'};

  //* this object (personOne) is passed by reference. Objects in Dart are passed by reference.
  Map<String, String> personTwo = capitalizeMap(personOne);

  print(personOne);
  print(personTwo);
}

String capitalize(String text) {
  text = text.trim().toLowerCase();
  text = text.replaceAll(' ', '');
  return text[0].toUpperCase() + text.substring(1);
}

Map<String, String> capitalizeMap(Map<String, String> person) {
  //* We use spread operator to create a copy of the map breaking the reference.
  person = {...person};

  String name =
      person['name'] = person['name']?.trim().toLowerCase() ?? 'no-name';
  name = name.replaceAll(' ', '');
  name = name[0].toUpperCase() + name.substring(1);
  person['name'] = name;
  return person;
}

void main() {
  var countries = {'Spain', 'Ireland', 'Germany'};
  print(countries);

  countries.add('France');
  countries.add('France');
  countries.add('France');
  countries.add('France');
  //* A set can be iterated. 
  //* A set is unordered collection of unique elements.

  //* A compile-time constat Set --> add const keyword before the set literal.
  final Set<String> constantSet = const {'Spain', 'Ireland', 'Germany'};
  print(constantSet);

  //* We can remove duplicates in a List transforming it to a Set and then to a List.

  List<String> duplicates = ['Spain', 'Ireland', 'Germany', 'Spain'];
  duplicates.toSet();
  duplicates.toList();
  print(duplicates);
}

void main() {
  var a = 9;
  const int b = 9;
  final double c = 9;
  print('$a $b $c');

  /// We can define a late variable lazily. 
  /// It is a non-nullable variable that's initialized after its declaration.
  late final double e;

  a = 20;
  /* 
   * b = 20; cannot assign to const variable. 
   * Final can be set only once. 
   * Lighter in memory. 
   * Unmodifiable in memory but values can be changed --> mutable.
  */
  
  /* 
   * c = 20;  cannot assign to final variable. 
   * Time-compile variable. 
   * Unmodifiable in memory and values can not be changed --> inmutable.
  */

  final List<String> personsFinal = ['Roge', 'Javier', 'Maria'];
  List<String> personsConst = const ['Roge', 'Javier', 'Maria'];

  personsFinal.add('Paco');
  personsConst.add('Paco');

  print(personsFinal);

  //! The result of this is an error.
  print(personsConst);

  e = 10;
  print(e);
}

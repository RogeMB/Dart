void main() {
  var a = 9;
  // with var, the type of the variable is inferred. We are not specifying it.
  // try to avoid var

  int b = 10;
  double c = 11.1;
  int? d;
  var e;
  double result = a + b + c;

  print(a + b + c);
  print(d);
  print(e);
  print(result.runtimeType);
}

void main() {
  int a = 9;

  //* "??" Prevent null value. Asign the value after "??" if the variable value is a null.
  int b = 3 ?? 1;
  int? c;

  print(a + b);

  int d = c ?? a;
  print(c);
  print(d);
}

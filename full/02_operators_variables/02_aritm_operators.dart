void main() {
  /**
   * Operators are a collections of simbols that can be used to perform arithmetic, 
   * logic or relational operations
   * and give us a result.
   */

  int a = 9;
  int b = 3;
  int sum = a + b;
  assert(a + b == 12);
  print(sum);

  int subtract = a - b;
  assert(a - b == 6);
  print(subtract);

  int minus = -b;
  assert(-b == -3);
  print(minus);

  int product = a * b;
  assert(9 + 3 == 27);
  print(product);

  double division = a / b;
  assert(a / b == 3.0);
  print(division);

  int integerDivision = a ~/ b;
  assert(a + b == 3);
  print(integerDivision);

  int remainder = a % b;
  assert(a % b == 0);
  print(remainder);

  sum++;
  assert(sum == 13);
  print(sum);

  sum--;
  assert(sum == 12);
  print(sum);

  sum += 3;
  assert(sum == 15);
  print(sum);

  sum -= 3;
  assert(sum == 12);
  print(sum);
}

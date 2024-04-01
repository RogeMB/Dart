void main() {
  //* Label is used to identify a block of code, we can use it in any block of code.
  //* Label name must be unique and followed by a colon (:).

  outerLoop:
  for (int i = 0; i < 10; i++) {
    print('i: $i');

    innerLoop:
    for (int j = 0; j < 5; j++) {
      print('j: $j');
      if (j == 3) break innerLoop;
    }
    if (i == 2) break outerLoop;
  }
}

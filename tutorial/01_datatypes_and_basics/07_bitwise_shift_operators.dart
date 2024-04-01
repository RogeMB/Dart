void main(List<String> args) {
  final value = 0x22;
  final bitmask = 0x0f;

  print(value);
  print(bitmask);
  print(0x220);

  print((value & bitmask) == 0x02); // AND
  print((value & ~bitmask) == 0x20); // AND NOT
  print((value | bitmask) == 0x2f); // OR
  print((value ^ bitmask) == 0x2d); // XOR

  print((value << 4) == 0x220); // Shift left
  print((value >> 4) == 0x02); // Shift right

  // Shift right example that results in different behavior on web
  // because the operand value changes when masked to 32 bits:
  print((-value >> 4) == -0x03);

  print((value >>> 4) == 0x02); // Unsigned shift right
  print((-value >>> 4) > 0); // Unsigned shift right
}

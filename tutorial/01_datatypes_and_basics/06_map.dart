void main() {
  Map<String, dynamic> malekith = {
    'Speed': 36,
    'Attack': 60,
    'Defense': 52,
    'PrimaryWeapon': 'Destroyer'
  };
  print(malekith);
  print(malekith['Attack']);
  print(malekith[1]); // null

  //* keyword 'new' is optional in Dart

  Map<String, dynamic> morathi = new Map<String, dynamic>();

  morathi.addAll({
    'Speed': 36,
    'Attack': 46,
    'Defense': 38,
    'PrimaryWeapon': 'Darksword'
  });

  print(morathi);

  //* replaced attributes of malekith
  morathi.addAll(malekith); 

  print(morathi); 
}

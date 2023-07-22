import 'dart:io';

void main(List<String> args) {
  /// OS and Linux. Also works on Windows.
  File file = File(Directory.current.path + '/assets/file.txt');

  print(Directory.current.path);

  /// Windows
  File file2 = File(Directory.current.path + '\\assets\\file.txt');

  if (file.existsSync()) {
    print('File Exists');
    Future<String> content = file.readAsString();
    String content2 = file.readAsStringSync();
    content.then(print);
    print(content2);
  } else {
    print('File Does Not Exist');
  }

  stdout.writeln('Beginning of the program');
}

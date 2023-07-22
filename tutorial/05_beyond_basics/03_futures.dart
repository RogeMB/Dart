import 'dart:io';

void main(List<String> args) {
  Future<String> timeout = Future.delayed(new Duration(seconds: 1), () {
    stdout.writeln('3 seconds later');
    return 'End of the program';
  });

  //* Following lines are the same.
  timeout.then((value) => print(value)).catchError((e) => print(e));
  timeout.then(print).catchError((e) => print(e));
  stdout.writeln('Welcome to the program');
}

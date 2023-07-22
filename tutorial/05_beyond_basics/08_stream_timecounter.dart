import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  int? max;
  int? maxPair;
  late Duration interval;
  int counter = 10;

  stdout.writeln('Starting server...');

  stdout.write('Write a number which will be used as maximum: ');
  while (max == null || max <= 0) {
    max = int.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0;
    if (max == 0) {
      stdout.writeln('Please, write a number greater than 0');
    }
  }

  interval = const Duration(seconds: 1);

  stdout.writeln('Wait 10 seconds...');
  Stream<int> counterStream =
      Stream<int>.periodic(interval, (int x) => counter - x).take(11);

  stdout.writeln('Initializing counting...');
  await counterStream.forEach(print);

  stdout.writeln('Finishing counting...');

  await timedCounter(interval, max).forEach(print).catchError((e) => print(e));
  
  stdout.write('Write another number which will be used as even maximum number: ');
  while (maxPair == null || maxPair <= 0 || maxPair % 2 != 0) {
    maxPair = int.tryParse(stdin.readLineSync()?.trim() ?? '') ?? 0;
    if (maxPair <= 0 || maxPair % 2 != 0) {
      stdout
          .writeln('Please, write a number greater than 0 and divisible by 2');
    }
  }

  stdout.writeln('Writing even numbers...');
  Stream<int> counterStream2 = Stream<int>.periodic(interval, (x) => x + 1).take(maxPair);
  await counterStream2
      .where((int x) => x.isEven)
      .expand((int x) => [x, x, x + 1])
      .take(12)
      .forEach(print);


  stdout.writeln('End of program!');
}

Stream<int> timedCounter(Duration interval, [int? maxCount]) {
  late StreamController<int> controller;
  Timer? timer;
  int counter = 0;

  void tick(_) {
    counter++;
    (maxCount != null && counter > maxCount)
        ? controller.close()
        : controller.add(counter);
  }

  void startTimer() {
    timer = Timer.periodic(interval, tick);
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
  }

  controller = StreamController<int>(
      onListen: startTimer,
      onPause: stopTimer,
      onResume: startTimer,
      onCancel: stopTimer);

  return controller.stream;
}

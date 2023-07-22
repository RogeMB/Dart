import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  stdout.writeln('Starting the program...');
  // main function is async and continues operating other operations while this operations is runnig.
  // to wait for the operation to finish, we use the await keyword.
  await Future.delayed(const Duration(milliseconds: 1000));

  String path = Directory.current.path + '/assets/file.txt';

  // await always required an async function. We change the main function to async.
  String result = await readFile(path);

  stdout.writeln('Result of the async operation: ');
  stdout.writeln('$result');

  stdout.writeln('End of the program.');
}

// async always returns a Future. readFile is a async function that returns a Future String afther a delay.
// A Future represents the result of the async operation. It has two states: uncompleted and completed.
Future<String> readFile(String path) async {
  File file = new File(path);
  return await file.readAsString();
}

import 'dart:async';

void main(List<String> args) {
  print('Starting...');

  // A Stream is a sequence of asynchronous events.
  // There are two ways to create a Stream: single subscription or broadcast.
  // Stream is like an observable in RxJS.
  // listen() is like the subscribe() method in RxJS.
  // Stream can handle errors.

  // A StreamController gives us a new stream and a a way to add events at any point and from anywhere.
  // StreamController with single subscription (only one listener)
  final streamController = StreamController<String>();

  // Another way to instantiate a StreamController is with broadcast subscription (multiple listeners).:
  final StreamController<String> streamControllerBroadcasted =
      StreamController<String>.broadcast();

  streamController.stream.listen(
    (data) => print('Async Listen: $data'),
    onError: (e) => print('Error: $e'),
    onDone: () => print('Done! All is okay!'),
    cancelOnError: false,
  );

  streamControllerBroadcasted.stream.listen(
    (data) => print('Broadcast Listen 1 : $data'),
    onError: (e) => print('Error: $e'),
    onDone: () => print('Done! All is okay!'),
    cancelOnError: false,
  );

  streamControllerBroadcasted.stream.listen(
    (data) => print('Broadcast Listen 2: $data'),
    onError: (e) => print('Error: $e'),
    onDone: () => print('Done! All is okay!'),
    cancelOnError: false,
  );
  //  .onError((e) => 'Unreachable error: $e');

  // sink is used to receive and write events to the stream.
  // Is it important to close the sink when the stream is closed.
  streamController.sink.add('Roge');
  streamController.sink.add('Favorite number: 9');
  streamController.sink.add('Favorite pet: Siberian Husky');
  streamController.sink.addError('Reached exclusive error');
  streamController.sink.add('Favorite city: Seville');
  streamController.sink.close();

  streamControllerBroadcasted.sink.add('Roge');
  streamControllerBroadcasted.sink.add('Favorite number: 9');
  streamControllerBroadcasted.sink.add('Favorite pet: Siberian Husky');
  streamControllerBroadcasted.sink.addError('Reached exclusive error');
  streamControllerBroadcasted.sink.add('Favorite city: Seville');
  streamControllerBroadcasted.sink.close();

  print('End of program');
}

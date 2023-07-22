import 'dart:async';

void main(List<String> args) {
  Future<String> timeout =
      Future.delayed(const Duration(milliseconds: 2500), () {
    if (1 == 1) {
      throw 'Watch out! Something went wrong.';
    }
    return 'Never reached.';
  });

  // In every single Future call we must catch the possible exception or errors.
  // .whenCompleted() is excecuted when the Future value or error completes
  timeout
      .then(print)
      .catchError((error) => print(error))
      .whenComplete(printOrderMessage);

}
// finally clause always will be executed even if the Future throws an error.
Future<void> printOrderMessage() async {
  try {
    print('Awaiting for order...');
    var order = await fetchUserOrder();
    print(order);
  } on TimeoutException catch (e1) {
    print('First Error never catched: $e1');
  } catch (e2) {
    print('Second Error: $e2');
  } finally {
    print('Finally: always executed');
  }
}

Future<String> fetchUserOrder() async {
  var str = Future.delayed(
      Duration(milliseconds: 2500), () => throw 'Cannot locate user order.');
  return str;
}

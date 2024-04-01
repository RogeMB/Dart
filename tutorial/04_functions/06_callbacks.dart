void main(List<String> args) {
  //* This is a anonymous function (function with no-name). Not every callback is an anonymous function.
  getUser('1', (Map<String, String> user) {
    print('$user : callback is called.');
  });
}

//* Callback function is a function that is passed as an argument to another function.
void getUser(String id, Function callback) {
  Map<String, String> user = {'id': id, 'name': 'Roge'};
  callback(user);
}

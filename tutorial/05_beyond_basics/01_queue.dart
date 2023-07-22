import 'dart:collection';

void main(List<String> args) {

  ///Queue is a FIFO data structure. Is a collection of elements that are inserted at the end of the queue.

  Queue<int> cola = Queue();

  List<int> listOne = [1, 2, 3, 4, 5];

  cola.addAll(listOne);

  cola.addFirst(0);
  cola.addLast(6);
  print(cola);
  cola.removeFirst();
  cola.removeLast();
  print(cola);

  // print(cola is Queue);
  
  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }

  cola.forEach((number) => print(number));
}

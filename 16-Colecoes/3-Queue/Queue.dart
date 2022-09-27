//! Queue => Colecao ordenada entre {}, sem index, que manipula o inicio e o fim da lista

import 'dart:collection';

queue() {
  print('16.3.0) Queue');

  Queue<int> queue1 = Queue();
  print('Implementação: ${queue1.runtimeType}');
  queue1.addAll([20, 40]);
  queue1.add(30);
  queue1.addFirst(10);
  queue1.addLast(50);
  queue1.add(60);
  queue1.removeLast();
  queue1.forEach((e) => print(e));
  print(queue1);
}

main(List<String> args) {
  queue();
}

main() {
  print('05.0) Loops\n');

  var num = 5;

  while (num > 0) {
    print('${num}');
    num--;
  }

  print('');
  do {
    print('${num}');
    num++;
  } while (num < 5);

  print('');
  var aux = 10;
  while (aux < 20) {
    if (aux == 15) {
      print('Entrei no IF');
      break;
    }
    print('$aux');
    aux++;
  }

  var nome = 'Hamerski';

  print('');
  for (var i = 0; i < nome.length; i++) {
    print(nome[i]);
  }

  print('');
  for (var i = 0; i < nome.length; i++) {
    print('indice: $i ${i % 2 == 0 ? 'Par' : 'Ímpar'}');
  }

  print('');
  dynamic frutas = ['abacaxi', 'maça', 'uva'];
  for (var fruta in frutas) {
    print(fruta);
  }
}

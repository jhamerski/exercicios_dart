//! LIST => Colecao dinamica e ordenada de elementos entre []
//! forEach => Aplicao funcao anonima a cada elemento da funcao
//! Todo Array e um List<>

import 'dart:math';

listForEach() {
  print('16.0) List forEcah\n');

  var array = [0, 2.5, 5, 7.5, 10];

  List<int> inteiros = [0, 5, 10];
  List<double> doubles = [2.5, 7.5];
  List<bool> booleanos = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Melancia'];

  array.forEach((elemento) {
    print(elemento);
  });

  print('Tipo da lista de Frutas: ${frutas.runtimeType}');
  print('Booleanas[3]: ${(booleanos[inteiros.length]) ? 'Verdadeiro' : 'False'}');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('forEach: $e'));
  frutas.removeLast();
  print(frutas);
  frutas.removeWhere((e) => e == 'Morango');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('Banana'));

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print(numeros);

  List<dynamic> lista = [2];
  lista = numeros.take(3).skip(1).toList();
  print(lista);

  List<String> listaPreenchida = List.filled(10, 'teste');
  List<String> listaGeradora = List.generate(5, (i) => 'Nome ${i + 1}');
  List<double> listaPrecos = List.generate(4, (i) => double.parse((i * Random().nextDouble()).toStringAsFixed(3)));

  print('Lista Preenchida: $listaPreenchida \nLista Geradora: $listaGeradora\nLista de Preços: $listaPrecos');

  listaPrecos.forEach((e) => print('forEach: $e'));
}

listExpand() {
  //! Cria uma nova lista expandindo ou concatenando os elementos
  print('\n16.1.1) List Expand');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((e) => e).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();

  print('Lista Flat: $listaFlat\nLista Duplicada: $listaDuplicada ');

  List<num> numeros = [0, 2.5, 5, 7.5, 10];
  List<num> inteiros = [0, 5, 10];
  List<num> doubles = [2.5, 7.5];

  List<dynamic> listaDinamica = [];
  print('Lista Dinamica: $listaDinamica');

  print('Concatenacao: ${listaDinamica = [1, 5, 10] + [2, 7]}');
  print('Concatenacao: ${listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles)}');
  print('Concatenacao: ${listaDinamica = [0, ...inteiros, 30]}');
  print('Concatenacao: ${listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]}');
  print('Concatenacao: ${listaDinamica = [...[], for (var num in numeros) num]}');
}

listMap() {
  //! Transforma/seleciona os elementos de uma colecao criando uma nova do mesmo tamanho
  print('\n16.1.2) List Map');

  List<String> frutas = ['Morango', 'Banana', 'Abacaxi'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 3, 5, 7, 9];
  final triplo = (int e) => e * 3;
  List<int> inteirosMapeados = inteiros.map(triplo).toList();
  print(inteirosMapeados);

  List<double> doub = [2.5, 7.5, 12.5];
  final quadruplo = (e) => e * 4;
  final moeda = (e) => 'RS:${e.toStringAsFixed(2).replaceFirst('.', ',')}';
  Function porcentagem(desconto) => (valor) => desconto * valor; //closure
  List<dynamic> doubMapeados = doub.map(quadruplo).map(moeda).toList(); // faltou implementar a Closure porcentagem
  print(doubMapeados);
}

listEvery() {
  //! Faz os testes em todos elementos com operador logico '&&' retornando true ou false
  print('\n16.1.3) List Every');

  List<int> num = [0, 1, 2, 3, 4, 5];
  bool result = num.every((element) => element >= 0);
  print(result);

  List<String> textos = List.from(['jonas', 'arthur', 'francielle']);
  var resultado = textos.every((e) => e.contains('a'));
  print(resultado);
  print(textos);
}

listWhere() {
  //! Filtra os elementos de uma colecao criando uma nova do mesmo tamanho ou menor
  print('\n16.1.4) List Where');

  List<int> idades = [15, 17, 12, 21, 33, 34, 60];
  print(idades.where((element) => element is int));
  print(idades.whereType<int>()); // mesmo resultado da linha acima

  print(idades.where((element) => element % 2 == 0).toList());
  print(idades.where((element) => element % 2 == 0)); // entre () sao iterable

  List<int> adultos = idades.where((int element) => element > 17).toList();
  var crianca = idades.singleWhere((int element) => element < 12, orElse: () => 0);
  int menor = idades.lastWhere((e) => e.toString().startsWith('1'), orElse: () => 0); // ultimo elemento encontrado

  print('Adultos: $adultos - Criança: $crianca - Menor: $menor');
}

listReduce() {
  //! Compara os elementos da colecao retornando um unico elemento resultante
  //! Ao interagir com os elementos o indice 0 o anterior e o indice 1 o atual
  print('\n16.1.5) List Reduce');

  List<int> pares = List.generate(6, (i) => i * 2);
  print(pares);
  int result = pares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print(result);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print('And: $and - Or: $or');
  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo = idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  int maisVelho = idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);
  print('Mais Novo: $maisNovo - Mais Velho: $maisVelho - Media: ${(media / idades.length).toStringAsFixed(4)}');
}

listFold() {
  //! Compara os elementos da colecao retornando um unico elemento resultante
  //! O valor inicial se torna o anterior e o indice 0 o atual
  print('\n16.1.5) List Fold');

  List<num> numPares = List.generate(6, (i) => i * 2);
  print(numPares);
  int valorIncial = 100;
  int resultado = numPares.fold(valorIncial, (anterior, atual) {
    print('Anterior: $anterior + Atual: $atual');
    return (anterior + atual).toInt();
  });
  print(resultado);
}

//17/06 - 26/09 (NORDESTE - MACEIO - PORTO DAS PEDRAS)

void main() {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}

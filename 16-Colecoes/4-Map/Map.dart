//! Map => Colecao dinamica e customizavel de chaves e valores entre {}, chaves unicas e valores nao se repetem para mesma chave - valor sobrescrito

import 'dart:ffi';

linkedHashMap() {
  print('16.4.0) LinkedHashMap == Map');

  List<String> nomes = ['Jonas', 'Francielle'];
  Map<int, dynamic> nomesMap = nomes.asMap(); // converte uma List em Map
  print(nomesMap);
  nomesMap.forEach((chave, valor) => print('$chave: $valor'));

  Map<dynamic, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // mesma chave - atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelha';
  print(frutas);
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('Azul'));
  print(frutas['banana']);
  frutas.clear();
  frutas[null] = null; // aceita chave e valores nulos
  print(frutas);

  Map<String, dynamic> usuario = Map.from({'nome': 'Jonas', 'idade': 33, 'peso': 79.50});
  usuario.update('nome', (valor) => '$valor Hamerski');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  usuario.removeWhere((chave, valor) => chave == 'peso' && valor == 70);
  print(usuario);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  usuario.putIfAbsent('altura', () => 1.69);
  print(usuario);
  usuario.addAll({'sexo': 'Masculino', 'casado': true});
  print(usuario);
  print('Chaves: ${usuario.keys} \nValores: ${usuario.values}\n');

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((chave, valor) => MapEntry(chave, '${valor.toUpperCase()}'))); // mapeando os valores
  for (var chave in numeros.keys) {
    print('forIn: $chave');
  }
  for (var valor in numeros.values) {
    print('forIn: $valor');
  }

  for (var chave in numeros.keys) {
    final valor = numeros[chave];
    print('forIN: Chave $chave - Valor: ${valor.toUpperCase()}');
  }
}

mapMap() {
  print('\n16.4.1) Map map');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borrracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.09},
    {'nome': 'Kit Lápis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5},
  ];

  //valor(valor) => valor['preco']; && ou desconto(desconto) => (valor) => desconto * valor;
  desconto(desconto) => (valor) => desconto * valor['preco'];
  print(desconto.runtimeType);
  final moeda = (e) => 'RS ${e.toStringAsFixed(4).replaceFirst('.', ',')}';
  List<String> precos1 = carrinho.map(desconto(0.5)).map(moeda).toList();
  List<String> precos2 = carrinho.map((e) => e.update('preco', (e) => e * 0.9)).map(moeda).toList();

  var precoMedioLista = carrinho.map((e) => e['preco']).toList(); // sem toList() => Iterable<dynamic> precoMedio
  print(precoMedioLista);

  var precoMedio = (carrinho.map((e) => e['preco']).reduce((anterior, atual) => (anterior + atual)) / carrinho.length).toStringAsFixed(2);

  print('Lista de preços 1 - 50% desc.: $precos1\nLista de preços 2 - 10% desc.: $precos2\nPreço médio: $precoMedio');

  List<Map<String, dynamic>> escola = [
    {
      'nome': 'Turma 1',
      'alunos': [
        {'nome': 'Jonas', 'nota': 8.5},
        {'nome': 'Francielle', 'nota': 9.8},
      ]
    },
    {
      'nome': 'Turma 2',
      'alunos': [
        {'nome': 'Arthur', 'nota': 10},
        {'nome': 'Sophia', 'nota': 10},
      ]
    },
  ];

  var alunosEscola = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota']).reduce((value, element) => (value + element) / escola.length);
  // escola.forEach((e) => print(e['alunos'][1]['nome']));
  print(alunosEscola);

  // List<dynamic> teste = [
  //   {'nome': 'Jonas', 'nota': 8.5},
  //   {'nome': 'Francielle', 'nota': '9.8'}
  // ];
  // List<dynamic> teste1 = [
  //   {'nome': 'Jonas', 'nota': 8.5},
  //   {'nome': 'Francielle', 'nota': '9.8'}
  // ];
  // var test = teste1.expand((element) => teste1);
  // print(test);
}

everyMap() {
  print('\n16.4.2) Map Every');
  //! Every faz o teste em 'todos' elementos com operador logico '&&' retornando (true or false)

  List<Map<dynamic, dynamic>> pessoas = [
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17},
  ];

  print(pessoas.every((element) => element.containsKey('nome')));
  print(pessoas.every((element) => element['idade'] > 17));
  print(pessoas.every((element) => element['nome'].startsWith('L')));
}

whereMap() {
  print('\n16.4.3) Map Where');

  //! Where filtra os elementos da colecao criando uma nova do mesmo tamanho ou menor

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebook', 'preco': 2499, 'fragil': true},
    {'nome': 'iPad', 'preco': 4199, 'fragil': true},
    {'nome': 'iPhone', 'preco': 2999, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];

  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];
  // var resultado = produtos.where((fragil)).map(nome).toList();
  List<dynamic> resultado = produtos.where((fragil)).map(nome).toList();
  print('Produtos frageis: $resultado');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Fernando', 'idade': 36},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17},
  ];

  List<Map<String, dynamic>> maiores = pessoas.where((element) => element['idade'] > 17).toList();
  Map<String, dynamic> comecaComL = pessoas.firstWhere((element) => element['nome'].startsWith('L'));
  Map<String, dynamic> menores = pessoas.singleWhere((e) => e['idade'] < 18);
  print('Maiores: $maiores\nComeça com L: $comecaComL\nMenores: $menores');

  var media = (pessoas.map((e) => e['idade']).reduce((p, c) => p + c)) / pessoas.length;
  print(media);
}

reduceMap() {
  print('\n16.4.3) Map Reduce');

  //! Reduce compara os elementos da colecao retornando 1 unico elemento resultante
  //! Ao interagir com os elementos o indice 0 se torna o anterior, e o indice 1 o atual

  List<Map<String, dynamic>> alunos = [
    {'nome': 'Fernando', 'nota': 7.3, 'bolsista': true},
    {'nome': 'Leila', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Cloe', 'nota': 9.8, 'bolsista': false},
    {'nome': 'Bartolomeu', 'nota': 8.7, 'bolsista': false},
  ];

  final bolsistas = (e) => e['bolsista'] as bool;
  final Function nome = (e) => e['nome'];
  dynamic notas = (e) => e['notas'];
  final soma = (p, c) => p + c;

  List<dynamic> bolsistasNomes = alunos.where((e) => e['bolsista']).map((e) => e['nome']).toList();
  List<Map<String, dynamic>> media = alunos.where(bolsistas).toList();
  var mediaBolsistas = media.map((e) => e['nota']).reduce(soma) / media.length;

  print('Alunos bolsistas: $bolsistasNomes - Média: $mediaBolsistas');

  bool todosBolsistas = alunos.map(bolsistas).reduce((value, element) => value && element);
  bool algumBolsistas = alunos.map(bolsistas).reduce((value, element) => value || element);
  print('Todos são bolsistas? ${todosBolsistas ? 'Sim' : 'Não'}\nAlgum bolsistas? ${algumBolsistas ? 'Sim' : 'Não'}');

  List<dynamic> funcionarios = [
    {'nome': 'Jonas', 'genero': 'M', 'pais': 'Brasil', 'salario': 1000},
    {'nome': 'Francielle', 'genero': 'F', 'pais': 'Brasil', 'salario': 3000},
    {'nome': 'Sophia', 'genero': 'F', 'pais': 'Brasil', 'salario': 4000},
    {'nome': 'Arthur', 'genero': 'M', 'pais': 'Portugal', 'salario': 5000},
  ];

  final brasileiros = (e) => e['pais'] == 'Brasil';
  final mulheres = (e) => e['genero'] == 'F';
  final menorSalario = (p, c) => p['salario'] < c['salario'] ? p['salario'] : c['salario']; // filtro menor salario
  final funcMenorSalario = (p, c) => p['salario'] < c['salario'] ? p : c;

  List<dynamic> selecionados = funcionarios.where(brasileiros).where(mulheres).toList();
  print(selecionados);
  print(selecionados.reduce(menorSalario));

  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print('Menor salario do ${funcionario['nome']} é de ${funcionario['salario']}');
}

void main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}

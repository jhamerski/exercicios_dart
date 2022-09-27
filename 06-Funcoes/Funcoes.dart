semRetorno() {
  print('06.0) Funcoes\n');

  void conceito() {
    print('Funcao void sem retorno.');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma de $valorA + $valorB = $resultado');
  }

  void maiorIdade(String nome, int idade) {
    if (idade >= 18) {
      print('$nome é de maior, tem $idade anos.');
    }
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (var item in array) {
      print('$item\t km para Milhas ${(item * milha).toStringAsFixed(2)}');
    }
    print('Array convertido e arredondado!');
  }

  conceito();
  somarValores(1987, 1984);
  maiorIdade('Jonas', 34);
  converterKmParaMilhas([1, 4, 10, 34, 89, 200, 500]);
}

comRetorno() {
  print('\n\nFuncoes com retorno\n');

  String conceito() {
    return 'Funcao com retorno string.';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma de $valorA + $valorB = $resultado';
  }

  String maiorIdade(String nome, int idade) {
    if (idade >= 18) {
      return '$nome é de maior, tem $idade anos.';
    } else {
      return 'De menor';
    }
  }

  converterKmParaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (var item in array) {
      print('$item\t km para Milhas ${(item * milha).toStringAsFixed(2)}');
    }
    return ('Array convertido e arredondado!');
  }

  print(conceito());
  print(somarValores(2, 4));
  print(maiorIdade('Franciele', 37));
  print(converterKmParaMilhas([1, 4, 10, 34, 89, 200, 500]));
}

main() {
  semRetorno();
  comRetorno();
}

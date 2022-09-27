void main() {
  List<Pessoa> pessoas = [];

  pessoas.add(Pessoa('Jonas Hamerski', '017.838.870-01', Genero('Masculino'), Endereco('Alcino Manoel da silva', '646', 'Praia Comprida')));

  pessoas.add(Pessoa('Francielle Barreto', '234.766.345-01', Genero('Feminino'), Endereco('Alcino Manoel da silva', '646', 'Praia Comprida')));

  //pessoas.removeAt(0);
  var toRemove = [];

  for (var pessoa in pessoas) {
    if (pessoa.nome == 'Francielle Barreto') {
      print('Dentro do IF: ${pessoa.nome}');
      toRemove.add(pessoa);
    }
    print('\n${pessoa.nome}');
    print(pessoa.genero.tipo);
  }
  print(pessoas.toString());

  pessoas.removeWhere((e) => toRemove.contains(e));
  print(pessoas);

  for (int i = 0; i < pessoas.length; i++) {
    print('oi');
  }

  var p0 = Point.ORIGIN;
  var p = Point(0, 0);
  var point = Point.clone(p0);

  print(identical(p0, p));
}

class Point {
  static final Point ORIGIN = const Point(0, 0);
  final int x;
  final int y;
  const Point(this.x, this.y);
  Point.clone(Point other)
      : x = other.x,
        y = other.y; //[2]
}

class Pessoa {
  String nome;
  String cpf;
  Genero genero;
  Endereco endereco;

  Pessoa(this.nome, this.cpf, this.genero, this.endereco);

  @override
  toString() {
    return nome;
  }
}

class Genero {
  String tipo;

  Genero(this.tipo);
}

class Endereco {
  String rua;
  String numero;
  String bairro;

  Endereco(this.rua, this.numero, this.bairro);
}

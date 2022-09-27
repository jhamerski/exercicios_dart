//! Valor constante e iniciada em tempo de compilacao
//! Ao nivel de classe deve ser estatica para ficar o conteudo disponivel na classe
//! Em colecoes, todo conteudo deve ser constante

//! Objeto imutavel => Construtor constante e variaveis final ou static const

import 'Brasil.dart';

void main() {
  print('10.02) Modificadores Const');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print(resultado);

  final num = [raio, 2.4];
  num.add(resultado);
  print(num);

  final listaFinal = const [0, 1];
  // listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1, 2, pi];
  print(listaConst);

  for (var i = 1; i <= 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print(constante + indiceFinal);
  }

  var pais = Brasil(-15.792371, -47.882326);
  print(
      'Objeto: $pais, Capital: ${Brasil.capital}, latitude: ${pais.latitude}, longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
//! Variavel estatica fica disponivel na propria classe ao inves de instancias e objetos
//! Em metodos estaticos deve-se usar variaveis estatica da classe
//! Variaveis estaticas podem ser acessadas sem precisar instanciar classes/objetos

import 'Calculos.dart';

void main() {
  print('10.0) Modificadores Static');

  double raio = 5;
  var calculos = Calculos();
  print(calculos.pi);
  print(calculos.areaCirculo(raio));
  print(Calculos.piEstatico);

  print('');

  var calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('');

  print(
      'Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim' : 'Não'} - Métodos diferentes');

  print('');
  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));

  print('Instancias ${identical(calculos, calculos2)? 'iguais consomem menos' : 'diferentes consomem mais'} memória.');
}
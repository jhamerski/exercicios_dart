
//! Os contrutores devem ter o mesmo nome da classe
//! Sao iniciados quando instanciamos as classes e podem ter confg. iniciais

import 'Objeto.dart';
import 'Animal.dart';
import 'Pessoa.dart';

void main(){
  print('08.0) Constutores');

  Objeto obj = Objeto();
  obj.nome = 'Cadeira';
  print('Nome do obj: ${obj.nome}');

  Animal cat = Animal(nome: 'Garfield', raca: 'Siamês', idade: 2);
  cat.info();

  Pessoa p1 = Pessoa('Arthur', 19);
  p1.cor = 'Branco';
  print('Cor: ${p1.cor}');
  
  Pessoa p2 = Pessoa.admin();

}
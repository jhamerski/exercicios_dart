//! Singleton => Padrão de projeto para que exista apenas uma instancia da classe
//! Construtor nomeado sem o construtor default, impede de instancia uma nova classe
//? Factory => Usado para retornar/manter a instancia original
//? Constutor Factory capaz de retornar valores

import 'PessoaFactory.dart';
import 'PessoaInstancia.dart';

SingletonFactory() {
  print('11.03) Singletons/Factory');

  var p1 = PessoaFactory();
  print(p1.nome);
  p1.nome = 'Jonas';
  print(PessoaFactory.instancia.nome);
}

SingletonInstancia() {
  print('11.04) Singletons/Instancias');

  var p1 = PessoaInstancia(nome: 'Jonas');
  print('Nome: ${p1.nome} - Identidade: ${p1.identidade}');
  var p2 = PessoaInstancia(nome: 'Francielle');
  print('Nome: ${p2.nome} - Identidade: ${p2.identidade}');
}

void main(List<String> args) {
  SingletonFactory();
  SingletonInstancia();
}

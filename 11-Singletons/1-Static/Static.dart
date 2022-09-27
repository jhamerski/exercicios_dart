//! Singleton é um padrao de projeto para que exista apenas 1 instancia da classe (evitar criacao de novos objetos)
//! O construtos nomeado privado sem o default, impede de instanciar outras classes
//! A instancia STATIC pode ser acessada diretamente

import 'PessoaStatic.dart';

void main() {
  print('11.0) Singletons Static');

  print(PessoaStatic.instancia.nome);
  // var teste = PessoaStatic(); Erro por nao tem um construtor default
  PessoaStatic.instancia.nome = 'Jonas';
  print(PessoaStatic.instancia.nome);

  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = 'Fran';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Arthur';
  print(PessoaStatic.instancia.nome);
  print('Objetos identicos? ${identical(p1, p2) ? 'Sim' : 'Não'}');
  print('p2 == Pessoa.Static.instancia? ${p2 == PessoaStatic.instancia ? 'Sim' : 'Não'}');
}

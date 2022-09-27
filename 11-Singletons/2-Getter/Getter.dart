//! Apneas uma instancia da classe
//! Construtor nomeado privado sem o construtor default impede instanciar a classe
//! a _instancia privada é acessada atraves do get

import 'PessoaGetter.dart';

void main(List<String> args) {
  print('11.02) Singletons Getter');

  print(PessoaGetter.instancia);
  PessoaGetter.instancia.nome = 'Jonas Hamerski';
  print(PessoaGetter.instancia.nome);

  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Arthur';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Francielle';
  print(PessoaGetter.instancia.nome);

  print('p1 = p2? ${identical(p1, p2) ? 'Sim' : 'Não'}');
  print('p2 = PessoaGetter? ${p2 == PessoaGetter.instancia ? 'Sim' : 'Não'}');
}

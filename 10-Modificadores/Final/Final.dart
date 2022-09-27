//! Iniciada apenas quando acessada em tempo de execucao, deve ser declarada
//! Em colecoes final nem todo conteudo sera final

import 'Pessoa.dart';

void main() {
  print('10.01) Modificadores Final');

  //? Objeto em queda livre leba 5s para chegar ao solo. Qual velocidade maxima do objeto?
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print('Velocidade maxima $velocidade m/s.');

  for (var i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }

  Pessoa p1 = Pessoa('Jonas', 'Francielle, Arthur');
  p1.nome = 'Jonas Hamerski';
  // p1.familiares = [];
  print('Nome: ${p1.nome} - Familiares: ${p1.familiares}');
}
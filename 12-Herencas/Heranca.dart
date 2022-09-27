//! Uma classe pode ter somente uma heranca

//? Construtores deve:
//? Obedever ordem dos parametros
//? Parametros default devem ser nomeados ou posicionados
//? Tratamento e tipagem dos parametros deve ser feito na classe herdeira

import 'Cao.dart';

void main(List<String> args) {
  print('12.0) Heranca de atributos, metodos e construtores');

  var cao = Cao('Bilu', 'vira lata', 'Macho', '2', true);
  print('Nome: ${cao.nome} - Raça: ${cao.raca} - Sexo: ${cao.sexo} - Idade: ${cao.idade} - Dócil: ${(cao.docil == true) ? 'Sim' : 'Não'}');
  cao
    ..acao()
    ..alimentar()
    ..dormir();
}

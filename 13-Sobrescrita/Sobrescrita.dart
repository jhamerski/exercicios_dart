//! Sobrescrita(Override) != Sobrecarga(Overload)
//! Override: sobrescreve os metodos da classe pai na classe herdeira

//! Construtores - Super se refere ao construtor da classe herdeira

//! Classes abstratas nao podem ser instanciadas (servem como modelo)
//! Metodos sem escopo devem ser sobrescritos nas classes herdeiras

import 'Cao.dart';

void main(List<String> args) {
  print('13.0) Sobrescritas de Metodos, Atributos e Construtores');

  // var ani = Animal.vertegrado('1', docil: true);
  // ani.dormir();

  var cao = Cao.domestico('Pluto', 'Salsicha', 'macho', docil: true);
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print('Desenvolvimento: ${cao.desenvolvimento}, tipo: ${cao.coluna! ? 'Vertebrado' : 'Invertebrado'}');
  print(cao);

  print('${cao.nome} esta ${cao.docil! ? 'amigavel' : 'carente'}');
}

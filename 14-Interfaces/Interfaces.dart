//! Sao modelos para implementar metodos e atributos em nossas classes
//! Deve-se utilizar todos metodos e atributos
//! Em dart nao tem sintaxe interfaces, pode ser classe concreta ou abstrata
//! Pode implementar mais de uma interface e deve sobrescrever todos metodos e atributos

import 'Candidato.dart';

void main() {
  print('15.0) Interfaces');
  
  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
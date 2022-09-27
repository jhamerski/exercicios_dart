import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String sexo, String idade, bool docil) : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'indefinida' : idade;
    this.docil = docil;
  }

  void acao() {
    print('Late como um cao');
  }
}

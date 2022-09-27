import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, raca, String sexo, {String? idade, bool? docil}) : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(nome, raca, sexo, {idade, bool? docil}) : super.placentarios(sexo, idade, docil: docil);

  //! sobrescreve o metodo da classe herdada (super classe)
  @override
  void dormir() {
    print('Dorme como um cao');
  }

  // @override opcional esta sintaxe
  void alimentar() {
    super.alimentar(); // implementa o metodo herdado
    print('cão');
  }

  @override
  void reproduzir() {
    // TODO: implement reproduzir
    print('Reproduz como um cão');
  }

  void acao() {
    print('Late como um cão');
  }

  String toString() {
    return 'Instance of ${this.runtimeType} com toString() personalizado';
  }
}

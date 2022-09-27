import 'Animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  String? desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertegrado(idade, docil: docil) {
    this.desenvolvimento = 'placentarios';
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertegrado(idade, docil: docil) {
    this.desenvolvimento = 'placentarios + bolsa externa';
  }

  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertegrado(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta como');
  }

  // metodos sem escopo em classes abstratas devem ser implementados em classes herdeiras
  void reproduzir();
}

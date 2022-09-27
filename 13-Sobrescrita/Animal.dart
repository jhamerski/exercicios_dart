abstract class Animal {
  String? idade;
  bool? docil;
  bool? coluna;

  Animal.vertegrado(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebraso(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal');
  }
}

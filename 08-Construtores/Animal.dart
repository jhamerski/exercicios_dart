class Animal{
  String? nome;
  String? raca;
  int? idade;

  Animal({this.nome, this.raca, this.idade});

  info(){
    print('Nome: ${this.nome}, raça: ${this.raca}, idade: ${this.idade}');
  }
}
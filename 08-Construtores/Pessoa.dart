class Pessoa{
  String? nome;
  int? idade;
  String? cor;
  double? altura;
  String? cargo;

  Pessoa(this.nome, this.idade, {this.cor, this.altura = 0, this.cargo = 'usuário'}){
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('\nConstrutor misturando os parâmetros, nomeados e obrigatórios');
    print('Nome: $nome, Idade: $idade, Cor: $cor, Altura: $altura, Cargo: $cargo');
  }
  
  Pessoa.admin({this.nome, this.cargo = 'admin'}){
    print('\nContrutor nomeado recebendo informações. Cargo: ${this.cargo}');
  }
}
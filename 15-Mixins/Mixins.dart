//! MIXINS -  Permite implementar metodos e atributos de outras classes

//! Devem ser implementadas antes da Interfaces
//! Podem ser implementadas a partir de uma classe concreta ou abstrata
//! Nao pode implementar uma classe que estenda e extender uma classe mixin
//! Pode implementar mais de um mixin, e nao e obrigatorio implementar todos metodos ou atributos
//! As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira

//! ON -> Obrigatorio declarar sua classe como mixin
//! Restringi o uso do mixin as classes que estendem ou implementam a classe declarada

void main() {
  print('15.0) Mixins');
  
  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 395999
    ..prestacaoContas();
}

// Mixins
mixin Elegivel on Cidadao{
  bool elegivel = false;
  void prestacaoContas();
}

//Mixins
abstract class Conta{
  double _saldo = 0, salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}


// Interface
abstract class Presidenciavel{
  String? partido;
  String? ideologia;
  
  void ideologiaPolitica();
}

// Interface
class Postagem{
  String? postagem;
  
  void escreverPostagem(){
    print('');
  }
}

// Classe Abstrata
abstract class Cidadao{
  String nome;
  
  Cidadao(this.nome);
  
  void objetivosPessoais();
  
  void direitosDeveres(){
    print('Todo cidado tem diretos e deveres');
  }
}

// Classe Concreta e implementando as Interfaces
class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel{
  String? objetivo;
  
  Candidato(String nome, {this.ideologia, this.partido}) : super(nome){
   direitosDeveres(); 
  }
  
  @override
  void objetivosPessoais(){
    print('$nome tem o objetivo de $objetivo');
  }
  
// ! INTERFACES POSTAGEM
  @override
  String? postagem;
  
  @override
  void escreverPostagem(){
    print('Postagem de $nome no facebook: $postagem');
  }
  
// ! INTERFACES PRESIDENCIAVEL
  @override
  String? partido;
  @override
  String? ideologia;
  
  @override
  void ideologiaPolitica(){
    print('$nome é candidato com ideologia: $ideologia pelo partido $partido');
  }

//  ! Mixins
  @override
  void prestacaoContas(){
    elegivel = super.declaracaoRenda();
    if(elegivel){
      print('Canditado ${nome} passou na prestação de contas. \nAutorizado a concorrer nas eleições.');
    }else{
      print('Canditado ${nome} foi barrado na prestação de conta. \nSaldo ${saldo} excede o valor para concerrer à Presidência.');
    }
  }

}
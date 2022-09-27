//! MIXINS -  Permite implementar metodos e atributos de outras classes

//! Devem ser implementadas antes da Interfaces
//! Podem ser implementadas a partir de uma classe concreta ou abstrata
//! Nao pode implementar uma classe que estenda e extender uma classe mixin
//! Pode implementar mais de um mixin, e nao e obrigatorio implementar todos metodos ou atributos
//! As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira

//! ON -> Obrigatorio declarar sua classe como mixin
//! Restringi o uso do mixin as classes que estendem ou implementam a classe declarada

// classe abstrata
abstract class Artista{
  void acao(){
    print('Performista...');
  }
}

// Mixin
mixin Cantor on Artista{
   void acao(){
    print('Cantar...');
  }
}

class Dancarino{
  void acao(){
    print('Dança...');
  }
}

// Interface
abstract class Acao{
  void executar();
}

// Classes Concretas
class Musico extends Artista with Dancarino, Cantor implements Acao{
  void acao() => print('Compoe...'); // comente para ver a hierarquia de sobrescritas

  @override
  void executar(){
    super.acao();
    acao();
  }
}

// A classe Mc nao pode cantar pq nao esta herdando de Artista
class Mc with Dancarino implements Acao{
  void acao() => print('Mixa...'); // comente para ver a hierarquia de sobrescritas

  @override
  void executar(){
    super.acao();
    acao();
  }
}

void main() {
  print('15.1) Mixins On');

  Musico musico = Musico();
  musico.executar();

  print('');
  
  Mc mc = Mc();
  mc.executar();
}
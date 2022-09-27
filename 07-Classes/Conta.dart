class Conta{
  String nome = 'Francielle';
  double saldo = 0;

  void depositar(double valor){
    this.saldo += valor;
  }

  void sacar(double valor){
    this.saldo -= valor;
  }

  void consultarSaldo(){
    print('Nome: ${this.nome} com saldo de: ${this.saldo}');
  }

  double desconto(int faltas) => (faltas > 1) ? .8 : (faltas == 1) ? .9 : 1;

  void calcularSalario(double salario, double bonus, int faltas){
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Nome: $nome teve salário de: $salario com bonus de: $bonus, ficando com saldo: $salarioCalculado');
  }
}
// ! Classes => objeto
// ! Variaveis => atributos
// ! Funcoes => Metodos


import 'Conta.dart';
import 'Pessoa.dart';

void main(){

  Pessoa p1 = Pessoa();
  p1.nome = 'Jonas Hamerski';
  p1.idade = 34;

  p1.info();

  print('');

  Conta c1 = Conta();
  c1.consultarSaldo();
  c1.depositar(1000);
  c1.consultarSaldo();
  c1.sacar(128);
  c1.consultarSaldo();
  c1.calcularSalario(1000, 500, 2);

  Pessoa p2 = Pessoa();
  p2..nome = 'Arthur' ..idade = 19;
  p2.info();
}

import 'dart:math';

class Conta{
  bool alteracao = false;
  int? _numConta;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;
  bool _vip = false;

  Conta(String nome){
    this._nome = nome;
    this._numConta = Random().nextInt(9999);
    print('Conta Numero: ${_numConta} do Titular: ${_nome} criada com sucesso.');
  }
  
  Conta.vip(this._nome){
    this._limite = 1000;
    this._vip = true;
  }

  // Getters
  get nome => this._nome.toString();

  get limite => this._limite;

  get vip => this._vip;

  get saldo => this._saldo;

  // Setter padrao
  set limite(dynamic limite) => this._limite = limite;

  // Setter customizado
  set deposito(double deposito){
    if(deposito > 0){
      this._saldo += deposito;
      print('\nDeposito efetuado com sucesso.');
    }else{
      print('Valor inválido.');
    }
  }
}

class c1{
  late String _teste;

  String get teste => _teste;

  set teste(String teste) {
    _teste = teste;
  }
}
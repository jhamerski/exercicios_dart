//! Sao usados para proteger os atributos e variaveis
//! Get para acessar e Set para alterar
//! Atributos ou variaveis com underline são privados. Ex.: String _nome

import 'Conta.dart';
import 'Usuario.dart';

void main(){
  print('09.0) Encapsuladores');

  Usuario user = Usuario('Jonas', 'abc123');
  print(user.nome);
  // print(user._senha);
  print(user.senha);
  print(user.senha);
  
  user..alteracao = true..senha = '1234567';
  print(user.senha);
  
  var conta = Conta('Jonas Hamerski');
  print(conta.limite);
  conta.limite = 2000.0;
  print('Limite aumentado: ${conta.limite}');
  conta.deposito = 1234;
  print('Valor do saldo: ${conta.saldo}');



  var contaVip = Conta.vip('Jonas Hamerski');
  // print('Nome ${contaVip._nome} - Tem limite de: ${contaVip._limite} - VIP? ${contaVip._vip}');
  print('Nome ${contaVip.nome} - Tem limite de: ${contaVip.limite} - VIP? ${contaVip.vip}');
}
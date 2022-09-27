void main(){
  print('02.1) Operadores Relacionais (== != > >= < <=)');

  /// Operador && se ambas foram true o retorno sera true
  /// Operador || precisa somente 1 true para retornar true
  /// Operador ! inverte o valor booleano

  var nota = 69;
  var resultado = nota >= 70;
  print('Aluno aprovado: $resultado');

  bool testeLogico = (!false && true);
  print('Teste logico: ${3 > 1 && (3 < 2) || testeLogico}'); // true
  print('5 == 5 && 5 > 4 : ${5 == 5 && 5 > 4}'); // true
  print('5 != 5 && 5 == 4 : ${5 != 5 && 5== 4}'); // false

}
void main(){
  print('02.0) Operadores Logicos (&& || !)');

  /// Operador && se ambas foram true o retorno sera true
  /// Operador || precisa somente 1 true para retornar true
  /// Operador ! inverte o valor booleano

  var verdadeiro = !false;
  var falso = !true;
  print('Verdadeiro: ${verdadeiro} e Falso: ${falso}');
  
  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao); // true

  bool operacaoDois = (1 == 2) || (3 > 2);
  print(operacaoDois); // true

  bool operacaoTres = !(1 == 2) || (3 > 2);
  print(operacaoTres); // false

}
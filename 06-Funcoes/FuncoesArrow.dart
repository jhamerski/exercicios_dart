///
///Funcoes Arrow tem o retorno implicito
///

funcaoArrow() {
  print('06.1 Funcoes Arrow.\n');

  String conceito() => 'Funcao Arrow com retorno implicito.';
  String somarValores(int valorA, int valorB) => 'Soma de $valorA + $valorB: ${valorA + valorB}';
  String verificarMaioridade(String nome, int idade) => (idade >= 18) ? '$nome é de maior.' : '$nome de menor.';
  String calcularAreaCirculo(double raio) => 'Area do circulo: ${3.14 * raio * raio}';
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome teve bonus de $bonus com $faltas faltas e o salario ficou: $total');
  }

  print(conceito());
  print(somarValores(1298, 8759));
  print(verificarMaioridade('Arthur', 19));
  print(calcularAreaCirculo(2));
  calcularSalario('Jonas', 1000, 500, 2);
}

main() {
  funcaoArrow();
}

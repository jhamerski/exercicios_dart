///
///Funcoes com parametros posicionados, devem obedecer a ordem declarada.
///Funcoes com parametros nomeados, devem ser declarados.
///Parametros posicionados ou nomeados devem comecar pelo ultimo parametro da funcao.
///

funcoesParametros() {
  print('06.3) Funcoes Parametros\n');

  void exibirDados(String nome, int idade, double altura) {
    print('Nome $nome, Idade: $idade, Altura:$altura');
  }

  void exibirDados1(String nome, int idade, [double altura = 1.69]) {
    print('Nome $nome, Idade: $idade, Altura:$altura');
  }

  exibirDados('Francielle', 37, 1.70);
  exibirDados1('Jonas', 34);
  exibirDados1('Jonas', 34, 2.00);

  print('\n\n06.04) Funcoes com parametros nomeados');
  void exibirDados2(String nome, {int idade = 0, double altura = 0}) {
    print('Nome $nome, Idade: $idade, Altura:$altura');
  }

  exibirDados2('Jonas', altura: 1.70, idade: 40); // fora de ordem

  print('\n\n06.5) Funcoes com parametros para outras funcoes');

  void falar() {
    print('Essa e uma funcao passada como parametro nomeado.');
  }

  void saudacao(String nome, Function funcaoFalar) {
    print('Ola, eu sou $nome.');
    funcaoFalar();
  }

  saudacao('Arthur', falar);
  saudacao('Arthur', () => print('Essa é uma funcao anonima.'));
}

main() {
  funcoesParametros();
}

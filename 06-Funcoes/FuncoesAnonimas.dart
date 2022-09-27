//! Funcoes anonimas nao recebem nome

FuncoesAnonimas(){

  print('06.4.0) Funcoes Anonimas');

  print('''SINTAXE
    (){
      print('Funcao Anonima');
    }

    () => print('Funcao Anonima com Arrow');
  ''');


  print('\n06.4.0) Funcoes Anonimas como Variaveis');

  var variavelAnonima = () => print('Variavel anonima');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variavel anonima $msg');
  variavelAnonimaParametro('PARAMETRO PASSADO POR VARIAVEL'); 


  print('\n06.4.0) Funcoes Anonimas com Parametro');
  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Funcao Anonima passada por parametro'));
}

main() {
  FuncoesAnonimas();
}
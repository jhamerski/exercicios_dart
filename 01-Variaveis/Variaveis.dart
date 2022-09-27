void main() {
  print('01.0) Variaveis');
  // Tipos de comentarios:
  // format(//)
  // block(/*bla bla bla*/)
  // Doc(///)

  /*
    'backspace' : '\b',
    'formfeed: '\f',
    newLine: '\n',
    return: '\r',
    tab: '\t',
  */

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;

  print(resultado);

  print('Concatenar ' 'strings ' 'é simples assim.');

  var txt1 = '\nJonas ';
  var txt2 = 'e ';
  var txt3 = 'Francielle\n';

  var msg = txt1 + txt2 + txt3;
  print(msg);

  var verdadeiro = true;
  print('Verdadeiro: ${verdadeiro}');

  var falso = false;
  print('Falso: $falso');
  print(''.runtimeType); // descobre tipo de variável em tempo de execucao

  const pi = 3.14; // variavel constante em tempo de compilacao
  String sobrenome = 'Hamerski';
  int idade = 34;
  double altura = 1.70;
  bool adulto = true;
  print('Sobrenome: ${sobrenome} tem ${sobrenome.length} letras.');

  dynamic variavel = 2.0;
  print('Tipo da variavel: ${variavel.runtimeType}');
  variavel = 2;
  variavel = '100';
  variavel = true;
  print(variavel);
}

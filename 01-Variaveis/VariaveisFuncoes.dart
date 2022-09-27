void main(){
  print('01.0) Variaveis e Funcoes');

  num pi = 3.14159265;

  print(pi.floor()); // arredondamento para baixo
  print(pi.round()); // 3.5 ou > retorna 4 || 3.5 < retorna 3
  print(pi.ceil()); // arredendamento para cima
  print(pi.clamp(3, 3.15)); // fica entre os valores informados 3.14159265
  print(pi.compareTo(4)); // 1 se for <, -1 se for >, 0 se for =
  print(pi.remainder(3)); // 0.1415926500000002
  print(pi.toInt()); // 3
  print(2.toDouble()); // 2.0
  print(pi.toString()); // '3.14159265'
  print(pi.toStringAsFixed(4)); // 3.1416
  print(pi.truncate()); // retorna o inteiro
  print(pi.isNegative); // false
  print('1'.padLeft(2, '00')); // 001
  print(12.gcd(16)); // 4

  String nomeCompleto = '\t Jonas Hamerski';
  String nome = 'Jonas';
  print(nomeCompleto);         // 	 Jonas Hamerski
  print(nomeCompleto.trim()); // Jonas Hamerski
  print(nomeCompleto.split(' ')); // [	, Jonas, Hamerski]
  print(nomeCompleto.trim().split(' ')); // [Jonas, Hamerski]
  print(nome.split('')); //[J, o, n, a, s]
  print(nome.toUpperCase()); // JONAS
  print(nome.toLowerCase()); // jonas
  print(nome.substring(3, 5)); //as
  print(nome.startsWith('J')); // true
  print(nome.replaceAll('ona', 'ONA')); // JONAs
  print(nome.replaceRange(0, 2, 'XXX')); // XXXas
  print(nomeCompleto.contains('Ham')); // true
  print(nome.indexOf('as')); // 3
  print(nomeCompleto.length); // 16
  print(nomeCompleto.endsWith('i')); // true
  print(nome.compareTo('Jonas')); // 0 se for =
  print(nome.compareTo('ona')); // 1 se contem
  print(nome.compareTo('1234')); // -1 se nao contem
  print(nome is String); // true
  String sopa = 'Sopa de letrinhas';
  int index = sopa.indexOf('de');
  print(index); // comeca no indece 5
  print(4 is! int); // false
}
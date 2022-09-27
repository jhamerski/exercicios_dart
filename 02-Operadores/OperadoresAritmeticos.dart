void main() {
  print('02.2) Operadores Aritmeticos (+ - *  / ~/ %), incremento (+= ++) e assignacao = ??');

  var peso = 10;
  peso = peso + 5;
  print(peso); // 15

  peso += 5;
  print(peso); // 20

  peso++;
  print(peso); // 21

  var a, b, c, d, e, f;
  a = 3;
  b = ++a;
  print('a: $a e b: $b'); // a: 4 e b: 4

  c = ++a / --b;
  print('a: $a e b: $b'); // a: 5 e b: 3
  print(c); // 1.6666666666666667

  d = a ~/ b;
  print('c: $c e d: $d'); //c: 1.6666666666666667 e d: 1

  var valorA = 8, valorB = 2;
  print('Resultado: A~/B: ${valorA ~/ valorB}'); // Resultado: A~/B: 4

  e = 1;
  f = e;
  f = null;
  f ??= ++e;
  print('e:$e f:$f'); // e: 2 f:2

  var x, y, z;
  z = 1;
  x = y ?? z; // x recebe valor de y, a menos que y seja nulo, entao x recebe z
  print('x:$x - y:$y - z:$z'); //x:1 - y:null - z:1

  var nome = null;
  print('Nome: ${nome ?? 'Jonas Hamerski'}'); // se variavel for nula, recebe valo string
}

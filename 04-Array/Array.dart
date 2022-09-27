/// Array é uma lista dinamica e ordenada de elementos entre chaves

main() {
  print('04.0) Arrays\n');

  var textos = ['Jonas', 'Hamerski'];
  var numeros = [1, 2.5, 30, -3];
  var condicoes = [!false, true, false, null];

  print('${textos[0]} ${textos[1]}');
  print('${textos[1]}');
  print('${numeros[3] > 2 ? 'Maior que 1' : 'Menor que 1'}');
  print('condicoes: ${condicoes[3] ?? textos[0]}');

  var mix = [1, [], 23, true, false, null];
  mix[1] = ['Fran', 'Barreto', 'Arthur'];
  print(mix[1]);

  mix.add('final do array');
  print(mix);

  mix.insert(0, 'primeiro elemento do array');
  print(mix);

  mix.removeAt(2);
  print(mix);

  mix.removeRange(1, 6);
  print(mix);

  mix.clear();
  print(mix);

  print('Array está vazio? ${mix.isEmpty}');
  mix.add('Jonas');
  print('Mix contem Jonas? ${mix.contains('Jonas')}');

  numeros = [23, 54, 1, 3.5, 8, 5, 13];
  numeros.sort();
  print(numeros);

  numeros.sort((b, a) => a.compareTo(b)); // inverter a b para lista ficar crescente
  print(numeros);
}

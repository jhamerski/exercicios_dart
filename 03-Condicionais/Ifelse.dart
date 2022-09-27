void main() {
  print('03.0) Condicionais (if else)');

  if (!true) {
    print('Verdade');
  } else {
    print('Falso');
  }

  int idade = 17;

  if (idade >= 18) {
    print('Maior');
  } else {
    print('Menor');
  }

  double peso = 65.0;
  double altura = 1.70;
  var temp = peso / (altura * altura);
  print(temp); // 22.49134948096886
  var imc = double.parse(temp.toStringAsFixed(3)); // 22.491
  print(imc);
  if (imc < 18.5) {
    print('IMC: $imc Abaixo do peso.');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc Peso normal.');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc Sobrepeso.');
  } else if (imc > 30 && imc < 35) {
    print('IMC $imc Obesidade Grau 1.');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc Obesidade Grau 2.');
  } else {
    print('IMC $imc Obesidade Grau 3.');
  }

  String textoInt = '10';
  String textoDouble = '12.1872673';
  int numInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);
  print('ParseInt: $numInt e ParseDouble: $numeroDouble'); // ParseInt: 10 e ParseDouble: 12.19
  print('ParseString: ${numeroDouble.toString() is String}'); // ParseString: true
}

void main(){
  print('03.1) Ternario');

  print('${true ? 'Verdadeira' : 'Falso'}');

  int idade = 17;
  print('${(idade < 14)? 'Criança' : (idade < 18) ? 'Adolescente' : 'Adulto'}');

  int nota = 70;
  print('${(nota < 40)? 'Reprovado' : (nota < 70)? 'Recuperação' : 'Aprovado'}');

  int ano = 1987;
  print('Ano:$ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? ' é bissexto' : ' não é bissexto.'}');

}
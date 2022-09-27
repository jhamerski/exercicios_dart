void main(){
  print('03.2) Switch');

  String operacao = '%'; // + - * /
  double numA = 12;
  double numB = 3;

  switch(operacao){
    case '+':
     print(numA + numB);
     break;
    case '-':
    print(numA - numB);
     break;
    case '*':
      print(numA * numB);
     break;
    case '/':
      print(numA / numB);
      break;
    default:
      print('Operação inválida.');
  }

}
//! Sincrona => Execucao bloqueada ate que seja concluida
//! Funcoes Sincronas => Executam somente operacoes sincronas

//! Assincrona => Permite executar outras operacoes enquanto sao processadas
//! Funcoes Assincronas => Executam ao mesmo tempo uma operacao assincrona e sincrona

//! Await => Indica espera de uma operacao assincrona, conclusao de uma future

//! Async => Deve ser usada em toda funcao que tenha operacoes assincronas Await

//! funcao assincrona
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

//! funcao assincrona
Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo!), () => 'Primeira tarefa finalizada');
}

//! funcao sincrona
void contagem({int segundos = 3}) {
  print('carregando..');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('concluído');
    });
  }
}

void main() async {
  print('18.2.0) Async Await');

  contagem(segundos: 3); // funcao sincrona
  print(await tarefa(tempo: 5)); // funcao assincrona
}

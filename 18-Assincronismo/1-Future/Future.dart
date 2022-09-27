//! Future => retorna um valor ou erro, resultado de uma execucao assincrona/futura

String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo!), () => 'Primeira tarefa finalizada');
}

void segundaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo), () => print('Segunda tarefa finalizada'));
}

excesao({int tempo = 1}) => Future.delayed(Duration(seconds: tempo), () => throw Exception('Erro intencional'));

void contagem({int segundos = 3}) {
  print('carregando..');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('concluído');
    });
  }
}

void main() {
  print('18.0.0) Futures');
  tarefa();
  segundaTarefa(tempo: 5);
  excesao(tempo: 7);
  contagem();
}

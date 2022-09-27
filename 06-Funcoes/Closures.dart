//! Closures Ocorre quando uma funcao e declarada dentro do corpo de outra funcao
//! Podendo retornar variaveis locais e da funcao superior

Closures(){
  print('06.05.01) Closures sem Retorno');

  var saudacao = (String nome){
    var msg = (complemento) => print('Olá $nome. $complemento');
    msg('Seja bem vindo(a).');
  };

  print(saudacao);
  saudacao('Jonas');

  print('\nClosures com Retorno');
  Function somar(int valorA){
    print(valorA);
    return (valorB){
      print(valorB);
      return valorA + valorB;
    };
  };

  var somarDez = somar(10);
  print(somarDez);
  print(somarDez(5));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(1000));
  print(descontarVinte(1000));

  print('\nClosures com Objeto');
  var novoObjeto = (){
    var id = 0;
    var objetroCriado = (String nome, descricao){
      // return 'id: ${(++id).toString().padLeft(3, '0')}, nome: $nome, descricao: $descricao'; // retorna array
      // return {'id': {(++id).toString().padLeft(3, '0')}, 'nome': nome, 'descricao': descricao};
      return Obj.fromMap({'id': {(++id).toString().padLeft(3, '0')}, 'nome': nome, 'descricao': descricao});
    };
    return objetroCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Jonas', 1000.0)];
  listaObjetos.add(objeto('Francielle', 2000));
  listaObjetos.add(objeto('Arthur', 6000.0));

  for (var obj in listaObjetos) {
    //print(obj.substring(9));
    //print(obj.map((c,v) => MapEntry(c, (v is double)? '${descontarDez(v)}' : v)));
    print((obj.descricao is num) ? descontarVinte(obj.descricao) : obj.descricao);
  }
}

class Obj{
  String? id, nome;
  dynamic descricao;
  Obj({this.id, this.nome, this.descricao});
  factory Obj.fromMap(Map<String,dynamic>map){
    return Obj(id: map['id'].toString(), nome: map['nome'], descricao: map['descricao']);
  }
}

main() {
  Closures();
}
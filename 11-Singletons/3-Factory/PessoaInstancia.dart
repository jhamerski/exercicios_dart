import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? nome;
  final int? _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade){
    // configuracoes iniciais
  }

  get identidade => _identidade;
}
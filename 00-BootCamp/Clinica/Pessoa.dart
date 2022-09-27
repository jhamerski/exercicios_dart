abstract class Pessoa {
  String _nome;
  String _cpf;
  String _sexo;
  String _email;
  String _endereco;
  String _telefone;
  bool _status;

  Pessoa(this._nome, this._cpf, this._sexo, this._email, this._endereco, this._telefone, this._status);

  get nome {
    return this._nome;
  }

  get status {
    return this._status;
  }

  get cpf {
    return this._cpf;
  }
}

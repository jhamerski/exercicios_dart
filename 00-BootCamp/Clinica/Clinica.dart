// ignore_for_file: unused_field

class Clinica {
  String _cnpj;
  String _nome;
  String _telefone;
  String _endereco;
  String _proprietario;

  Clinica(this._cnpj, this._nome, this._telefone, this._endereco, this._proprietario);

  @override
  String toString() {
    // TODO: implement toString
    return '$_cnpj';
  }
}

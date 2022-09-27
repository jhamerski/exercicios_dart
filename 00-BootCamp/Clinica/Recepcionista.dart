import 'Pessoa.dart';

class Recepcionista extends Pessoa {
  String cargo;

  Recepcionista(this.cargo, nome, String cpf, String sexo, String email, String endereco, String telefone, bool status) : super(nome, cpf, sexo, email, endereco, telefone, status);
}

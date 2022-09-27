import 'Consulta.dart';
import 'Pessoa.dart';

class Paciente extends Pessoa {
  List<Consulta>? consultas;

  Paciente(nome, cpf, sexo, email, endereco, telefone, status, {List<Consulta>? this.consultas}) : super(nome, cpf, sexo, email, endereco, telefone, status);

  get consulta {
    return this.consultas;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'NOME:$nome STATUS:$status CPF:$cpf';
  }
}

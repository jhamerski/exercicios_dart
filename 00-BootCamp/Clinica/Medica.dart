import 'Paciente.dart';
import 'Pessoa.dart';

class Medica extends Pessoa {
  String crm;
  List<Paciente>? pacientes;

  Medica(this.crm, String nome, String cpf, String sexo, String email, String endereco, String telefone, bool status, {List<Paciente>? this.pacientes})
      : super(nome, cpf, sexo, email, endereco, telefone, status);

  get paciente {
    return this.pacientes;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '${this.nome} - ${this.crm}';
  }
}

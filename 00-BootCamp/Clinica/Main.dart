import 'Clinica.dart';
import 'Consulta.dart';
import 'Medica.dart';
import 'Paciente.dart';

void main() {
  Paciente p1 = Paciente('Jonas Hamerski', '017.838.870-01', '', '', '', '', true);
  print(p1.nome);

  Paciente p2 = Paciente('Francielle', '', '', '', '', '', true, consultas: [Consulta('2021-10-04', 'Retorno'), Consulta('2021-10-05', 'Ida')]);
  p2.consultas!.add(Consulta('2021-10-06', 'Retorno'));
  print(p2.consulta);

  for (var item in p2.consultas!) {
    print(item);
  }

  print('Nome: ${p2.nome} consultando em ${p2.consultas?[0].data}');
  // print(p2.consultas);

  print('');

  Medica m1 = Medica('99999999', 'Lourdes Oliveira', '123.234.234.09', 'F', 'fran@gmail.com', 'Av. Central', '48 1231-1231', true, pacientes: [
    Paciente('Francielle', '123.123.123.12', '', '', '', '', true, consultas: [Consulta('2021-10-04', 'Retorno')]),
    Paciente('Jonas', '321.982.891-00', '', '', '', '', true, consultas: [Consulta('2021-10-04', 'Retorno')])
  ]);

  m1.pacientes!.add(Paciente('Arthur', '321.982.891-00', '345.343.767-09', 'M', 'arthur6464@gmail.com', 'Alcino Manoel da Silva, 646', true));

  print('Médica: ${m1.nome} atende a paciente: ${m1.pacientes?[0].nome} que teve a última consulta em ${m1.pacientes?[0].consultas?[0].data} sendo está de ${m1.pacientes![0].consultas![0].tipo}');
  print(m1.paciente);

  int aux = 0;
  for (var item in p2.consulta) {
    print('Data: ${p2.consultas?[aux].data} com tipo de consulta: ${p2.consultas?[aux].tipo}');
    aux++;
  }

  print('');

  for (var i = 0; i < p2.consultas!.length; i++) {
    print('Data: ${p2.consultas?[i].data} com tipo de consulta: ${p2.consultas?[i].tipo}');
  }

  Clinica c1 = Clinica('_cnpj', '_nome', '_telefone', '_endereco', '_proprietario');
  print(c1);

  List<Paciente> pacientes = [];
  pacientes.add(Paciente('Jonas Hamerski', '017.838.870-01', '', '', '', '', true));
  print(pacientes[0]);

  print(m1.pacientes);
  for (var i = 0; i < m1.pacientes!.length; i++) {
    if (m1.pacientes![i].nome == 'Arthur') {
      print('Entrei no IF ${i}');
    } else {
      print('ELSE');
    }
  }

  List<Medica> medicos = [];
  medicos.add(Medica(' 123987', 'Luciano', 'cpf', 'sexo', 'email', 'endereco', 'telefone', false));
  medicos.add(Medica('999999', 'Sophia', 'cpf', 'sexo', 'email', 'endereco', 'telefone', false));
  print(medicos);
}

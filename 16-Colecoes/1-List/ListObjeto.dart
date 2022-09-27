import 'Models/Caracteristicas.dart';
import 'Models/Carro.dart';
import 'Models/Multa.dart';
import 'Models/Pessoa.dart';
import 'Models/Proprietario.dart';
import 'Models/Venda.dart';
import 'Models/Vendedor.dart';

main(List<String> args) {
  print('16.1.7) List manipulando Objetos');

  Pessoa p1 = Pessoa('Jonas', 'Hamerski', identidade: 7102103228);
  Pessoa p2 = Pessoa('Francielle', 'Barreto');

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Arthur', 'Ern1222'));

  pessoas.forEach((e) => print('forEach: ${e.nome} ${e.sobrenome} \tRG: ${e.identidade}'));

  print('');
  for (var i = 0; i < pessoas.length; i++) {
    print('For - RG: ${pessoas[i].identidade}');
  }

  print('');
  for (var p in pessoas) {
    print('ForIn: ${p.nome}');
  }

  print('\n16.1.8) List ordenando Objetos');
  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor('Jonas Hamerski', [Venda('PlayStation', 5000), Venda('Xbox', 3225.99), Venda('N64', 2345.98)]));
  vendedores.add(Vendedor('Francielle Barreto', [Venda('PlayStation5', 8500), Venda('XboxOne', 1999.99), Venda('N64X', 3333.33)]));

  //vendedores.sort((b, a) => (a.vendas.fold(0, (anterior, atual) => anterior + atual.preco)).compareTo(b.vendas.fold(0, (anterior, atual) => anterior + atual.preco)));
  vendedores.forEach((e) => print((e.vendas).map((e) => e.preco).toList()));

  print('\n16.1.9) List manipulando Objetos');
  List<Proprietario> proprietarios = [];

  proprietarios.add(Proprietario('Sophia ', 'Alcino Manoel da Silva, 646', [
    Carro('VW', 'GOL', 'UIR-3453', Caracteristicas('Passeio', 'Gasolina', 5, 120), multas: [Multa('Ultrapassagem proibida', 'gravissima', 7)]),
    Carro('VW', 'VIRTUS', 'QWE-9999', Caracteristicas('Passeio', 'Gasolina', 5, 150), multas: [Multa('Estacionamento proibido', 'grave', 5)]),
  ]));

  proprietarios.add(Proprietario('Jonas', 'Alcino Manoel da Silva, 646', [
    Carro('FORD', 'KA', 'ABC-1234', Caracteristicas('Passeio', 'Gasolina', 5, 110), multas: [Multa('Estacionamento proibido', 'grave', 5)]),
    Carro('GM', 'Cruze', 'QWE-9999', Caracteristicas('Passeio', 'Gasolina', 5, 130), multas: [Multa('Conversao proibida', 'gravissima', 7)]),
  ]));

  proprietarios.add(Proprietario('Francielle', 'Alcino Manoel da Silva, 646', [
    Carro('VW', 'GOL', 'UIR-3453', Caracteristicas('Passeio', 'Gasolina', 5, 120), multas: [Multa('Ultrapassagem proibida', 'gravissima', 7)]),
    Carro('VW', 'VIRTUS', 'QWE-9999', Caracteristicas('Passeio', 'Gasolina', 5, 150), multas: [Multa('Estacionamento proibido', 'grave', 5)]),
  ]));

  proprietarios.add(Proprietario('Arthur ', 'Alcino Manoel da Silva, 646', [
    Carro('VW', 'GOL', 'UIR-3453', Caracteristicas('Passeio', 'Gasolina', 5, 120), multas: [Multa('Ultrapassagem proibida', 'gravissima', 7)]),
    Carro('VW', 'VIRTUS', 'QWE-9999', Caracteristicas('Passeio', 'Gasolina', 5, 150), multas: [Multa('Estacionamento proibido', 'grave', 5)]),
  ]));

  //proprietarios.forEach((element) => element.carros.forEach((element) => element.multas!.sort((a, b) => a.pontos.compareTo(b.pontos))));

  proprietarios.sort((a, b) => a.nome.compareTo(b.nome));

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    print(proprietarios[i].nome);
    for (var carro in carros) {
      print(carro.caracteristica.potencia);
      carro.multas?.forEach((element) {
        print(element.descricao);
      });
    }
  }
}

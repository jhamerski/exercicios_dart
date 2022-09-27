import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidencial.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel{
  String? objetivo;
  
  Candidato(String nome, {this.ideologia, this.partido}) : super(nome){
   direitosDeveres(); 
  }
  
  @override
  void objetivosPessoais(){
    print('$nome tem o objetivo de $objetivo');
  }
  
// ! INTERFACES
  @override
  String? postagem;
  
  @override
  void escreverPostagem(){
    print('Postagem de $nome no facebook: $postagem');
  }
  
// ! INTERFACES
  @override
  String? partido;
  @override
  String? ideologia;
  
  @override
  void ideologiaPolitica(){
    print('$nome é candidato com ideologia: $ideologia pelo partido $partido');
  }
}
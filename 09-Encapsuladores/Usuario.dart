class Usuario{
  bool alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, String senha){
    this._senha = senha;
  }
  
  //! getter padrao
  String get senha{
    return _senha.toString();
  }
  
  //! setter padrao
  set senha(String senha){
    if(alteracao){
      _senha = senha;
      print('\nSenha alterada');
    }else{
      print('\nErro: Acesso negado');
    }
  }
}
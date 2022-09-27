//! Try => Usado para testar uma logica
//! Catch => Captura erros na logica Try
//! On => Captura especificos na logica Try
//! throw Exception => Excecao criada pelo usuario e tratada no catch
//! finally => Executado no final do Try/Catch, com excecao ou não. Liberar recursos da logica Try

caso01() {
  //! quando se desconhece a excecao
  print('17.0.1) try/catch');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Descrição: $e');
  }
}

caso02() {
  //! quando se conhece a excecao
  print('\n17.0.2) on');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } on IntegerDivisionByZeroException {
    print('Não é possível dividir números inteiros por zero');
  } catch (e) {
    print('Descrição: $e');
  }
}

caso03() {
  //! para descobrir eventos ocorridos antes de excecao
  print('\n17.0.3) stacktrace');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Descrição: $e');
    print('Stack Trace: $s');
  }
}

caso04() {
  //! para tratar apos execucao do try/catch
  print('\n17.0.4) finally');
  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Descrição: $e');
  } finally {
    print('finally: Com ou sem excecao o FINALLY será executado');
  }
}

caso05() {
  //! para tratar apos execucao do try/catch
  print('\n17.0.5) throw exception');
  try {
    int valorA = 1, valorB = 0;
    double resultado = valorA / valorB;

    if (resultado.isInfinite) throw Exception('A variável valorB deve ser diferente de zero');

    print('Resultado: $resultado');
  } catch (e) {
    print('Descrição: $e');
  } finally {
    print('finally: Com ou sem excecao o FINALLY será executado');
  }
}

void main() {
  print('17.0.0) Tratamento de Excecoes\n');

  caso01();
  caso02();
  caso03();
  caso04();
  caso05();
}

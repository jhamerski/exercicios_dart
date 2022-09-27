//! Set => e uma colecao de elementos unicos e ordenados entre chaves {}. Nao tem acesso ao indice

import 'dart:collection';

linkedHashSet() {
  print('16.2.0) LinkedHashSet == Set');

  Set<int> setInt = Set();
  print('Implementação: ${setInt.runtimeType}'); // _CompactLinkedHashSet<int>
  // setInt[0] = 0; //! Nao tem acesso ao indice

  setInt.add(13);
  setInt.add(13);
  setInt.add(21);
  setInt.add(17);
  setInt.remove(13);
  print(setInt);

  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); sem acesso ao indice. Porem pode usar o elementAt()
    print('for: ${setInt.elementAt(i)}');
  }

  for (var e in setInt) {
    print('for In: ${e}');
  }

  setInt.forEach((e) => print('forEach: ${e}'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print('Diferença entre LA e LB: ${listaA.difference(listaB)}');
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaB.lookup(3));
}

hashset() {
  //! Colecao de elementos unicos e desordenados
  print('\n16.2.1) HashSet');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();
  print('Implementação: ${hashSet1.runtimeType}');

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet1.add('F');

  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);

  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);

  print('$hashSet1 \n$hashSet2 \n$hashSet3');

  for (var i = 0; i < hashSet1.length; i++) {
    // print(hashSet1[i]);
    print('for com hashset1: ${hashSet1.elementAt(i)}');
  }

  for (var i in hashSet2) {
    print('forIn com hashset2: ${i}');
  }

  hashSet3.forEach((element) => print('forEach com hashset3: ${element}'));
}

splaytreeset() {
  //! Se organiza automaticamente e deixa os elementos em ordem crescente
  //! Não pode conter elementos do tipo null
  print('\n16.2.2) SplayTreeSet');

  SplayTreeSet<String> splayTreeSet1 = SplayTreeSet();
  print('Implementação: ${splayTreeSet1.runtimeType}');
  splayTreeSet1.add('info1');
  splayTreeSet1.add('info3');
  splayTreeSet1.add('info');
  splayTreeSet1.add('info2');
  print(splayTreeSet1);

  for (var i = 0; i < splayTreeSet1.length; i++) {
    // print(splayTreeSet1[i]);
    print('for com hashset1: ${splayTreeSet1.elementAt(i)}');
  }

  for (var i in splayTreeSet1) {
    print('forIn com hashset2: ${i}');
  }

  splayTreeSet1.forEach((element) => print('forEach com hashset3: ${element}'));

}

main() {
  linkedHashSet();
  hashset();
  splaytreeset();
}

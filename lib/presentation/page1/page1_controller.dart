import 'package:flutter/cupertino.dart';

class Person {
  String? nome;
  Person({
    this.nome,
  });
}

class Page1Controller extends ChangeNotifier {
  ValueNotifier<int> selectedPerson = ValueNotifier<int>(0);

  setSelectedPerson(int value) {
    selectedPerson.value = value;
  }

  ValueNotifier<List<Person>> lista = ValueNotifier<List<Person>>([
    Person(nome: 'valor 1'),
    Person(nome: 'valor 2'),
    Person(nome: 'valor 3'),
  ]);

  updateItem(int index, Person person) {
    lista.value[index] = person;
    lista.notifyListeners();
    notifyListeners();
  }
}

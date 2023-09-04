import 'package:imcalc/input_reader.dart';
import 'package:imcalc/model/person.dart';

void printHeader() {
  print('');
  print('--------------------------');
  print('Calculadora IMC');
  print('--------------------------');
  print('');
}

void printResults(Person person) {
  print('');
  print('--------------------------');
  print('O IMC de ${person.name} é: ${person.getImcString}');
  print('Classificação: ${person.imcMessage}');
  print('--------------------------');
  print('');
}

void printQuit() {
  print('Calculadora encerrada!');
  print('');
}

void main(List<String> arguments) {
  printHeader();

  var reader = InputReader();
  var quit = false;

  while (!quit) {
    print('Digite seu nome: (nome vazio para sair)');
    var line = reader.readInput();
    if (line == null || line == '') {
      printQuit();
      quit = true;
    } else {
      String name = line;

      print('Digite seu peso (em kg): ');
      var weight = reader.readValue();

      print('Digite sua altura (em metros): ');
      var height = reader.readValue();

      printResults(Person(name: name, weight: weight, height: height));
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:imcalc/input_reader.dart';
import 'package:imcalc/model/person.dart';

void main(List<String> arguments) {
  print('');
  print('--------------------------');
  print('Calculadora IMC');
  print('--------------------------');
  print('');

  var quit = false;
  Person person = Person();

  while (!quit) {
    print('Digite seu nome: (nome vazio para sair)');
    var line = stdin.readLineSync(encoding: utf8);
    if (line == null || line == '') {
      print('Calculadora encerrada!');
      quit = true;
    } else {
      String nome = line;
      person.setName(nome);

      print('Digite seu peso (em kg): ');
      var weight = InputReader().readValue();
      person.setWeight(weight);

      print('Digite sua altura (em metros): ');
      var height = InputReader().readValue();
      person.setHeight(height);

      print('');
      print('--------------------------');
      print('O IMC do ${person.name} é: ${person.getImcString}');
      print('Classificação: ${person.imcMessage}');
      print('--------------------------');
      print('');
    }
  }
}

import 'dart:convert';
import 'dart:io';

class InputReader {
  double readValue() {
    bool readingInput = true;
    double numero = 0;
    while (readingInput) {
      var line = readInput();
      try {
        numero = double.parse(line ?? '');
        readingInput = false;
      } catch (e) {
        print('Valor digitado inválido. Tente novamente: ');
        readingInput = true;
      }
    }
    return numero;
  }

  String? readInput() {
    return stdin.readLineSync(encoding: utf8);
  }
}

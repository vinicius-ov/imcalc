import 'dart:convert';
import 'dart:io';

class InputReader {
  double readValue() {
    bool readingInput = true;
    double numero = 0;
    while (readingInput) {
      var line = readInput() ?? '0';
      line = line.replaceAll(",", ".");
      try {
        numero = parseNumber(line) ?? 0.0;
        if (numero > 0) {
          readingInput = false;
        } else {
          print('Valor digitado inválido. Tente novamente: ');
        }
      } catch (e) {
        print('Valor digitado inválido. Tente novamente: ');
      }
    }
    return numero;
  }

  double? parseNumber(String line) {
    double numero = double.parse(line);
    if (numero > 0) {
      return numero;
    } else {
      return null;
    }
  }

  String? readInput() {
    return stdin.readLineSync(encoding: utf8);
  }
}

import 'package:imcalc/model/person.dart';
import 'package:test/test.dart';

void main() {
  group('Tests IMC values', () {
    Person pessoa = Person(name: 'Fulano', weight: 88.1, height: 1.88);

    test('calculate IMC', () {
      expect(pessoa.imc, 24.92643730194658);
    });

    test('calculated imc string formatted', () {
      expect(pessoa.getImcString, '24.93');
    });
  });

  group('Tests IMC classification', () {
    var personList = {
      Person(name: 'A', weight: 88, height: 1.8): 'Sobrepeso',
      Person(name: 'A', weight: 90, height: 1.68): 'Obesidade grau I',
    };

    personList.forEach((values, expected) {
      test('Check IMC classification', () {
        expect(values.imcMessage, equals(expected));
      });
    });
  });

  group('Tests IMC classification', () {
    var personList = {
      Person(name: 'A', weight: 88, height: 1.8): 'Sobrepeso',
      Person(name: 'A', weight: 90, height: 1.68): 'Obesidade grau I',
    };

    personList.forEach((values, expected) {
      test('Check IMC classification', () {
        expect(values.imcMessage, equals(expected));
      });
    });
  });
}

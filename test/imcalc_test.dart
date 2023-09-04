import 'package:imcalc/input_reader.dart';
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
      Person(name: 'B', weight: 90, height: 1.68): 'Obesidade grau I',
    };

    personList.forEach((values, expected) {
      test('Check IMC classification', () {
        expect(values.imcMessage, equals(expected));
      });
    });
  });

  group('Tests IMC edge cases', () {
    var personList = {
      Person(name: 'A', weight: 68, height: 2): 17,
      Person(name: 'B', weight: 71, height: 1.68): 25.15589569160998,
    };

    personList.forEach((values, expected) {
      test('Check IMC edge', () {
        expect(values.imc, equals(expected));
      });
    });
  });

  group('Test conversion to double', () {
    test('input reader value 0', () {
      var number = InputReader().parseNumber('0');
      expect(number, null);
    });

    test('input reader value lesser than 0', () {
      var number = InputReader().parseNumber('-10');
      expect(number, null);
    });

    test('input reader value bigger than 0', () {
      var number = InputReader().parseNumber('1.68');
      expect(number, 1.68);
    });
  });
}

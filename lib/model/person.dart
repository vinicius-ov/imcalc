class Person {
  String name = '';
  double weight = 0;
  double height = 0;

  Person();

  void setName(String name) {
    this.name = name;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  void setHeight(double height) {
    this.height = height;
  }

  double get _imc {
    return weight / (height * height);
  }

  String get getImcString {
    return _imc.toStringAsFixed(_imc.truncateToDouble() == _imc ? 0 : 2);
  }

  String get imcMessage {
    switch (_imc) {
      case > 16 && < 17:
        return 'Magreza moderada';
      case > 17 && < 18.5:
        return 'Magreza leve';
      case > 18.5 && < 25:
        return 'Saudável';
      case > 25 && < 30:
        return 'Sobrepeso';
      case > 30 && < 35:
        return 'Obesidade grau I';
      case > 35 && < 40:
        return 'Obesidade grau II (severa)';
      case >= 40:
        return 'Obesidade grau III (mórbida)';
      case > 16 && < 17:
        return 'Magreza moderada.';
      default:
        return 'Magreza grave';
    }
  }
}

class Person {
  String name;
  double weight;
  double height;

  Person({required this.name, required this.weight, required this.height});

  void setName(String name) {
    this.name = name;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  void setHeight(double height) {
    this.height = height;
  }

  double get imc {
    return weight / (height * height);
  }

  String get getImcString {
    return imc.toStringAsFixed(imc.truncateToDouble() == imc ? 0 : 2);
  }

  String get imcMessage {
    switch (imc) {
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

import 'dart:developer';

class Profile {
  String name;
  String lastName;
  String desc;
  int age;
  List<String> educate = [];

  Profile({
    required this.name,
    required this.lastName,
    required this.age,
    required this.desc,
    // required this.educate,
  });

  toJsonEncodeableSaveInDatabase() {
    Map<String, dynamic> m = {}
      //.. is Cascade notation
      ..['name'] = name
      ..['lastname'] = lastName
      ..['age'] = age
      ..['desc'] = desc;
    // m['name'] = educate;
    return m;
  }

  toJsonEncodeableSaveInLocalStorage() {
    Map<String, dynamic> m = {}
      ..['name'] = name
      ..['lastname'] = lastName
      ..['age'] = age
      ..['desc'] = desc;

    // m['name'] = educate;
    return m;
  }

  factory Profile.fromJson(dynamic json) {
    return Profile(
      name: json['name'],
      lastName: json['lastname'],
      age: json['age'],
      desc: json['desc'],
    );
  }
}

class Animals {
  int numOfLeg = 0;
  double baseOfSpeed = 0.5;

  countLegNum() {
    log('leg num is: $numOfLeg');
  }
}

//inherits == (superclass, subclass) extends
class Bird extends Animals {
  int numOfWing = 2;
  double flyingSpeed = 0.85;
}

class BasicMath {
  double plus({double? input, double? plusBy}) {
    return input! + plusBy!;
  }

  double minus({double? input, double? minusBy}) {
    return input! - minusBy!;
  }

  double multiply({double? input, double? multiplyBy}) {
    return input! * multiplyBy!;
  }

  static double divide({double? input, double? dividedBy}) {
    if (dividedBy != 0) {
      return input! / dividedBy!;
    }
    return 0;
  }
}

//inherits == (superclass, subclass) extends
//mixin == with
//interface == implements
class Calculate implements BasicMath {
  @override
  double plus({double? input, double? plusBy}) {
    return input! + plusBy!;
  }

  @override
  double minus({double? input, double? minusBy}) {
    return input! - minusBy!;
  }

  @override
  double multiply({double? input, double? multiplyBy}) {
    return input! * multiplyBy!;
  }

  static double divide({double? input, double? dividedBy}) {
    if (dividedBy != 0) {
      return input! / dividedBy!;
    }
    return 0;
  }
}

abstract class MathEasy {
  String? name;
  int? id;
  void plus({double input, double plusBy});
  void minus({double input, double minusBy});
}

class ResultMath implements MathEasy {
  @override
  String? name = 'srisirim';
  @override
  int? id = 2;
  @override
  void plus({double? input, double? plusBy}) {
    log('return ${input! + plusBy!}');
  }

  @override
  void minus({double? input, double? minusBy}) {
    log('return ${input! + minusBy!}');
  }
}

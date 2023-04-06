class Animal {
  String? name = null;
  var numberOfLegs = 0;

  Animal() {
    //its a empty constructor.
  }

  Animal.namedConsSetDog() {
    name = 'dog';
    numberOfLegs = 4;
  }

  void printAnimalName() {
    print(name ?? 'Animal name unknown.');
  }
}

extension AddSomeNewFunctionalityToAnimalClass on Animal {
  // Here we can add some new functionality to our animal class
  // which we will be able to use throughout our project.
  String printAnimalNameAlongwithNumOfLeg() {
    return '$name has $numberOfLegs Legs';
  }

  String get nameWithNumOfLegs => '$name has $numberOfLegs Legs';
}

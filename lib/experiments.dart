class Experiments {
  void funIfElseStatements() {
    var name = ['owl', 'fowl', 'houl', 'cowl', 'lowl'];
    name.add('owl');
    final myName = "sam";
    for (var item in name) {
      if (item == myName) {
        print("Your Name is found");
      } else {
        print("Your Name is not found in the above variable");
      }
    }
  }

  void operatorsInDart() {
    // Infix operators are *, +, -,/ etc.
    final age = 54;
    var multiplyAge = age * 2;
    var devideAge = age / 2;
    var agePlusTen = age + 10;
    print('Original age is:$age');
    print('Original age*2 is:$multiplyAge');
    print('Original age/2 is:$devideAge');
    print('Original age+10 is:$agePlusTen');

    //Prefix & postfix operators : -- ++
    var number = 99;
    print('Number -- is :${--number}');
    print('Number ++ is :${++number},${number++}');
    print('Number is :${number--}');
    print('Number is :${number}');
  }

  void listsInDart() {
    final listOfNumbers = [1, 2, 3, 4, 5, 6];
    for (var itr = 0; itr < listOfNumbers.length; itr++) {
      print('Index : $itr | Item in the index is : ${listOfNumbers[itr]}');
    }
  }

  void setInDart() {
    var name = {'owl', 'fowl', 'houl', 'cowl', 'lowl'};
    name.add('owl');
    name.forEach((element) {
      print(element);
    });
    // We will see that the 'owl' element will be prited only once
    // because set doesn't allow us to save two same elements inside it.
  }

  void mapsInDart() {
    var myMap = {'key_1': 1223};
    myMap['key_2'] = 0021;
    myMap['key_3'] = 02144;
    myMap['key_4'] = 1908;
    for (var key in myMap.keys) {
      print('Key Name : $key value : ${myMap[key]}');
    }
  }

  void nullSefetyInDart(String? firstName, String? lastName) {
    String? myValue =
        null; // to declear any variable that can hold a null value.
    print(myValue);
    myValue = 'ooasdbasda';
    print(myValue);

    // CherryPicking Not Null : ?? is like elvis operator(:?) in java it will chekck if the first name
    // is null then it will return last name. If the first name is not null then it
    // will just return the firstname;
    print(firstName ?? lastName ?? 'both are null');

    // Null aware assigment operator : ??=
    // this operator will check for a null value and if there is a null value
    // then it will assign a new value to it.
    print(firstName ??= 'new value assigned');
  }

  void callEnums(MyProperties value) {
    //this is how we call an emun in dart
    print(MyProperties.values);
    switch (value) {
      case MyProperties.FIRST_NAME:
        print('My first name is Sam');
        break;
      case MyProperties.LAST_NAME:
        print('My last name is samanta');
        break;
      case MyProperties.AGE:
        print('Age is unknown');
        break;
      case MyProperties.SEX:
        print('Sex is male');
        break;
    }
  }

  List<String>? myList = null;
}

// This is how we declear a enum in dart.
enum MyProperties { FIRST_NAME, LAST_NAME, AGE, SEX }

class Car {
  String make;
  String model;
  String yearMade;
  bool hasABS;
  //Normal constructor in dart.
  Car(this.make, this.model, this.yearMade, this.hasABS);
}

// In Dart, this is not possible, but there is a way around it.
// It is called named constructors. Giving your constructors different names allows your class
// to have many constructors and also to better represent their use cases outside of the class.
// The constructor withoutABS initializes the instance variable hasABS to false, before the constructor body executes.
// This is known as an initializer list and you can initialize several variables, separated by a comma.
class Car1 {
  String make;
  String model;
  String yearMade;
  bool hasABS;

  Car1(this.make, this.model, this.yearMade, this.hasABS);

  Car1.withoutABS(this.make, this.model, this.yearMade) : hasABS = false;

// this is a factory constractor 
// A factory constructor is a constructor that can 
// be used when you don't necessarily want a constructor to create a new instance of your class.
// This might be useful if you hold instances of your class in memory and don't want to create a new one each time 
// (or if the operation of creating an instance is costly). 
  factory Car1.makeSomethingSpecific() {
    return Car1('make','model 1','2023',false);
  }
}

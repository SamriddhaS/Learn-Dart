import 'dart:math';

Future<int> asyncMultiplication(int value, int multiplier) {
  return Future.delayed(const Duration(seconds: 5), () {
    return value * multiplier;
  });
}

void makeAsyncMultiplication(int value, int multipler) async {
  var result = await asyncMultiplication(value, multipler);
  print(result);
}

void collectStreamValueAsync() async {
  await for (var item in getRandomNumberStream()) {
    print('New Random number:$item');
  }
}

Stream<int> getRandomNumberStream() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return getRandomNumber();
  });
}

int getRandomNumber() {
  return Random().nextInt(1000);
}

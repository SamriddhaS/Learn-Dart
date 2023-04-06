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

// Generators in dart
// The synchronous generator returns an iterable object i.e. it returns the collection of values, or “elements”,
// that can be accessed sequentially.
// To implement synchronous generator function, mark the function body as sync*, and use yield statements to deliver value(s).
Iterable<int> getItarableListOfInt() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void collectGenerator() {
  for (var item in getItarableListOfInt()) {
    print(item);
    if (item == 2) break;
  }
}

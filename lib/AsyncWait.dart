Future<int> asyncMultiplication(int value, int multiplier) {
  return Future.delayed(const Duration(seconds: 5), () {
    return value * multiplier;
  });
}

void makeAsyncMultiplication(int value, int multipler) async {
  var result = await asyncMultiplication(value, multipler);
  print(result);
}

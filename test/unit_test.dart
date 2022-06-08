
import 'package:flutter_test/flutter_test.dart';

int sumTwoValues(int a, int b) => a+b+1;

void main() {
  test('Counter value should be incremented', () {
    // given
    int firstNumber = 10;
    int secondNumber = 11;

    // when
    int result = sumTwoValues(firstNumber, secondNumber);

    // then
    expect(result, 22);
  });

}
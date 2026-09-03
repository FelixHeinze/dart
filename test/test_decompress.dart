import 'package:test/test.dart';
import '../decompress.dart';

void main(){
  test('Test 1: Dekomprimierung von A3B3C2DA7', () {
    String input = 'A3B3C2DA7';
    String expectedOutput = 'AAABBBCCDAAAAAAA';
    expect(decompress(input), equals(expectedOutput));
  });

  test('Test 2: Dekomprimierung von A5', () {
    String input = 'A5';
    String expectedOutput = 'AAAAA';
    expect(decompress(input), equals(expectedOutput));
  });

  test('Test 3: Dekomprimierung von ABCDE', () {
    String input = 'ABCDE';
    String expectedOutput = 'ABCDE';
    expect(decompress(input), equals(expectedOutput));
  });
  test('Test 4: Dekomprimierung von A3%3445', () {
    String input = 'A3%3445';
    String expectedOutput = 'AAA%%%445';
    expect(decompress(input), equals(expectedOutput));
  });
  test('Test 5: Dekomprimierung von a3b3c3', () {
    String input = 'a3b3c3';
    String expectedOutput = 'aaabbbccc';
    expect(decompress(input), equals(expectedOutput));
  });
}
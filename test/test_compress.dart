import 'package:test/test.dart';
import '../compress.dart';

void main(){
  test('Test 1: Komprimierung von AAABBBCCDAAAAAAA', () {
    String input = 'AAABBBCCDAAAAAAA';
    String expectedOutput = 'A3B3C2DA7';
    expect(encode(input), equals(expectedOutput));
  });

  test('Test 2: Komprimierung von AAAAA', () {
    String input = 'AAAAA';
    String expectedOutput = 'A5';
    expect(encode(input), equals(expectedOutput));
  });

  test('Test 3: Komprimierung von ABCDE', () {
    String input = 'ABCDE';
    String expectedOutput = 'ABCDE';
    expect(encode(input), equals(expectedOutput));
  });
}

import 'dart:io';
String decompress(String input) {
  String result = '';
  int i = 0;

  while (i < input.length) {
    String currentChar = input[i];
    i++;
    String countStr = '';

    while (i < input.length && RegExp(r'\d').hasMatch(input[i])) {
      countStr += input[i];
      i++;
    }

    int count = countStr.isNotEmpty ? int.parse(countStr) : 1;
    result += currentChar * count;
  }

  return result;
}

void main () {

  print('Bitte geben Sie eine komprimierte Zeichenkette ein, die dekomprimiert werden soll:');
  String input = stdin.readLineSync() ?? '';
  String decompressed = decompress(input);
  print('Original: $input');
  print('Decomprimiert: $decompressed');
}
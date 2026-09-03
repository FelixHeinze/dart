

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
  String test = 'A3B7CCD5A4';
  String decompressed = decompress(test);
  print('Original: $test');
  print('Decomprimiert: $decompressed');
}
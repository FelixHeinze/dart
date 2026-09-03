
import 'dart:io';
String decompress(String input) { // funktion zum dekomprimieren eines strings
  String result = '';
  int i = 0;

  while (i < input.length) { // schleife durch die Eingabezeichenkette
    String currentChar = input[i]; // aktuelles zeichen speichern
    i++;
    String countStr = ''; // string zum speichern der anzahl der wiederholungen

    while (i < input.length && RegExp(r'\d').hasMatch(input[i])) { // prüfen, ob das aktuelle zeichen eine zahl ist
      countStr += input[i];// wenn ja, anzahl zum countStr hinzufügen
      i++;
    }

    int count = countStr.isNotEmpty ? int.parse(countStr) : 1; // wenn countStr nicht leer ist, parse es zu einer zahl, sonst setze count auf 1
    result += currentChar * count; // aktuelles zeichen count mal zum ergebnis hinzufügen
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
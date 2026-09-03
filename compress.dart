/* vorüberlegung: 
    */
  import 'dart:io';
  String encode(String input) {
    String result = '';
    int count = 1;
  
    for (int i = 0; i < input.length; i++) { // schleife durch die Eingabezeichenkette
      if (i + 1 < input.length && input[i] == input[i + 1]) { // prüfen, ob das aktuelle Zeichen gleich dem nächsten Zeichen ist
        count++; // wenn ja, erhöhen Sie den Zähler
      } else {
        result += input[i]; // aktuelle Zeichen zum Ergebnis hinzu
        if (count > 1) { // wenn der Zähler größer als 1 ist, Anzahl zum Ergebnis hinzu
          result += count.toString(); // anzahl zum Ergebnis hinzufügen
        }
        count = 1;
      }
    }
  
    return result;
  }

  void main() {
    print('Bitte geben Sie eine Zeichenkette ein, die komprimiert werden soll:');
    String input = stdin.readLineSync() ?? '';
    String compressed = encode(input);
    print('Original: $input');
    print('Komprimiert: $compressed');

  }
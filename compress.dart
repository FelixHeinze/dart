/* vorüberlegung: 
   -string prüfen ob leer
  
  
    1. ersten buchstaben abschneiden
    2. in anderen string speichern
    3. buchstaben danach vergleichen und zählen
    4. nächsten buchstaben abschneiden und schritte 2.3.4 wiederholen bis
    ende des strings erreicht */
  
  String encode(String input) {
    String result = '';
    int count = 1;
  
    for (int i = 0; i < input.length; i++) {
      if (i + 1 < input.length && input[i] == input[i + 1]) {
        count++;
      } else {
        result += input[i];
        if (count > 1) {
          result += count.toString();
        }
        count = 1;
      }
    }
  
    return result;
  }

  void main() {
    String test = 'AAABBBCCDAAAAAAA';
    String compressed = encode(test);
    print('Original: $test');
    print('Komprimiert: $compressed');

  }
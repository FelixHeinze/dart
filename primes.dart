import 'dart:io';

/* vorüberlegung: definition primzahl: eine natürliche Zahl größer als 1, die nur durch 1 und sich selbst teilbar ist
      --> eingabe prüfen ob int  >= 1 0,1,2 sind keine 
      -->  schleife die übrigen zahlen bis zur eingabe prüft
      --> mathematisch relevante teiler prüfen
      --> also bis zur quadratwurzel  der gesuchten zahl
      --> und nur ungerade zahlen prüfen also gerade weglasen, weniger durchläufe*/

bool istPrimzahl(int zahl) {
  if (zahl <= 1) {
    return false; // Zahlen kleiner oder gleich 1 sind keine Primzahlen
  }
  if (zahl == 2) {
    return true; // 2 ist eine Primzahl
  }
  if (zahl % 2 == 0) {
    return false; // Gerade Zahlen größer als 2 sind keine Primzahlen
  }
  for (int i = 3; i * i <= zahl; i += 2) {
    // i+2 nur ungerade zahlen prüfen
    // schleife nur bis zur Quadratwurzel der Zahl, nur ungerade Zahlen prüfen ( i*i <= zahl  == i <= sqrt(zahl) )
    if (zahl % i == 0) {
      return false; // Zahl ist durch i teilbar, also keine Primzahl
    }
  }
  return true; // Zahl ist eine Primzahl

  /* Wenn eine Zahl einen Teiler hat, liegt mindestens einer der Teiler unterhalb der Quadratwurzel.

Beispiel:

45 = 5 × 9

5 liegt unter √45

9 liegt darüber  ---> nie über quadratwurzel hinaus prüfen */
}

void main() {
  stdout.write('Bitte gib eine Zahl ein: ');
  String? eingabe = stdin.readLineSync();
  int? zahl = int.tryParse(eingabe!);

  if (zahl == null || zahl <= 1) {
    print('Ungültige Eingabe. Bitte eine ganze Zahl größer als 1 eingeben.');
  } else {
    // schleife zur ausgabe aller primzahlen bis zur eingegebenen zahl
    print('Primzahlen bis $zahl:');
    for (int i = 2; i <= zahl; i++) {
      if (istPrimzahl(i)) {
        print(i);
      }
    }
  }
}

import 'dart:io';
import 'dart:math'; // für random befehl

/* //Vorüberlegung: 
  -anzahl der würfe abfragen ( als int und gültig prüfen )
  - würfeln bis anzahl der würfe erreicht ( schleife)
  ---> bei 2 mal 6er wurf hintereinander, abbruch der schleife
  ---> bei erreichen der anzahl der würfe fertig ( limit erreicht)
-- alle würfe in liste speichern und ausgeben 
 */
int? wurfAnzahl;
void main() {
  while (wurfAnzahl == null || wurfAnzahl! <= 0) {
    stdout.write('Bitte gib die Anzahl der Würfe ein: ');
    String? wurfEingabe = stdin.readLineSync();
    wurfAnzahl = int.tryParse(wurfEingabe!);
    if (wurfAnzahl == null || wurfAnzahl! <= 0) {
      print('Ungültige Eingabe. Gültige Zahl eingeben!');
    } else {
      List<int> wurfListe = [];
      int letzteWurf = 0;

      for (int i = 0; i < wurfAnzahl!; i++) {
        int wurf =
            Random().nextInt(6) + 1; // Würfeln (1-6) fängt bei 0 an deswegen +1
        wurfListe.add(wurf);
        print('Wurf ${i + 1}: $wurf');

        if (letzteWurf == 6 && wurf == 6) {
          print('Zwei Sechser hintereinander! ');
          break;
        }
        letzteWurf = wurf;
      }

      print('Alle Würfe: $wurfListe');
    }
  }
}

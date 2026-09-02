import 'dart:io';

String? vorname;
String? nachname;
int? alter;
String? anrede;
DateTime jetzt = DateTime.now();
int aktuelleStunde = jetzt.hour;
void main() {
  // schleife für vorname und alter
  while (vorname == null ) {
    stdout.write('Bitte gib deinen Vornamen ein: ');
    vorname = stdin.readLineSync();
  }
  while (nachname == null) {
    stdout.write('Bitte gib deinen Nachnamen ein: ');
    nachname = stdin.readLineSync();
  }

  //schleife mit abfrage für alter
  while (alter == null ) {
    stdout.write('Bitte gib dein Alter ein: ');
    String? alterEingabe = stdin.readLineSync();
    int? pruefAlter = int.tryParse(
        alterEingabe!); // versuch eingegebenen String in int umzuwandeln

    if (pruefAlter != null && pruefAlter >= 0 && pruefAlter <= 150) {
      alter = pruefAlter;
    } else
      ('Bitte erneut das Alter eingeben.Passt nicht');
  }

  while (anrede == null) {
    print(
        ' Bitte wähle wähle entsprechend deines Geschlechtes: 1=männlich 2=weiblich');
    stdout.write('Deine Auswahl: ');
    String? auswahl = stdin.readLineSync();

    switch (auswahl) {
      case "1":
        anrede = "Herr";
        break;
      case "2":
        anrede = "Frau";
        break;
      default:
        print('Ungültige eingabe. nochmal');
    }
  }
  // basteln des ausgabestrings entsprechend den vorgaben in der aufgabenstellugn
  if (alter! < 40) {
    print('Hallo, $vorname');
  } else {
    if (aktuelleStunde < 12) {
      print('Guten Morgen  $anrede $nachname');
    } else if (aktuelleStunde < 18) {
      print('Guten Tag $anrede $nachname');
    } else {
      print('Guten Abend $anrede $nachname');
    }
  }
}

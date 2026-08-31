import 'dart:io';

String? vorname;
String? nachname;
int? alter;
void main() {
  // schleife für vorname und alter
  while (vorname == null) {
    stdout.write('Bitte gib deinen Vornamen ein: ');
    vorname = stdin.readLineSync();
  }
  while (nachname == null) {
    stdout.write('Bitte gib deinen Nachnamen ein: ');
    nachname = stdin.readLineSync();
  }

  //schleife mit abfrage für alter
  while (alter == null) {
    stdout.write('Bitte gib dein Alter ein: ');
    String? alterEingabe = stdin.readLineSync();
    int? pruefAlter = int.tryParse(
        alterEingabe!); // versuch eingegebenen String in int umzuwandeln

    if (pruefAlter != null && pruefAlter >= 0 && pruefAlter <= 150) {
      alter = pruefAlter;
    } else
      ('Bitte erneut das Alter eingeben.Passt nicht');
  }
}

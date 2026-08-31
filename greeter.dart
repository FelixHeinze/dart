import 'dart:io';

void main() {
  stdout.write('Bitte gib deinen Vornamen ein: ');
  String? vorname = stdin.readLineSync();
  stdout.write('Bitte gib deinen Nachnamen ein: ');
  String? nachname = stdin.readLineSync();
  stdout.write('Bitte gib dein Alter ein: ');
  String? alterEingabe = stdin.readLineSync();
  int? alter = int.tryParse(
      alterEingabe!); // versuch eingegebenen String in int umzuwandeln
}

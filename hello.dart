import 'dart:io'; //Bibliothek für benutzereingaben


void main() {
    stdout.write('Bitte gib deinen Namen ein: ');
    String? name = stdin.readLineSync(); // zeile als string einlesen

    print('Hallo $name');
}
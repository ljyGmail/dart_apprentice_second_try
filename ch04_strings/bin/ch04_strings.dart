import 'package:characters/characters.dart';

void main() {
  howComputersRepresentStrings();
  print('------------------------------');
  unicode();
  print('------------------------------');
  stringsAndCharactersInDart();
  print('------------------------------');
}

// # How Computers Represent Strings
void howComputersRepresentStrings() {
  print("character set");
}

// # Unicode
void unicode() {
  print("unicode");
}

// # Strings and Characters in Dart
void stringsAndCharactersInDart() {
  print('Hello, Dart!');

  var greeting = 'Hello, Dart!';
  print(greeting);

  greeting = 'Hello, Flutter!';
  print(greeting);

  // ## Getting Characters
  const letter = 'a';
  print(letter.runtimeType);

  var salutation = 'Hello!';
  print(salutation.codeUnits);
  print(salutation.runes);

  const dart = '🎯';
  print(dart.codeUnits); // surrogate pair
  print(dart.runes);

  // ## Unicode Grapheme Clusters
  const flag = '🇲🇳';
  print(flag.runes);

  const family = '👨‍👩‍👧‍👦';
  print(family.runes);

  print(family.length); // => 11
  print(family.codeUnits.length); // => 11
  print(family.runes.length); // => 7

  // ### Adding the Characters Package
  print(family.characters.length); // => 1
}

import 'package:characters/characters.dart';

void main() {
  howComputersRepresentStrings();
  print('------------------------------');
  unicode();
  print('------------------------------');
  stringsAndCharactersInDart();
  print('------------------------------');
  singleQuotesVsDoubleQuotes();
  print('------------------------------');
  concatenation();
  print('------------------------------');
  interpolation();
  print('------------------------------');
  multiLineStrings();
  print('------------------------------');
  insertingCharactersFromTheirCodes();
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

// # Single Quotes vs. Double Quotes
void singleQuotesVsDoubleQuotes() {
  print('I like cats');
  print("I like cats");
  print("my cat's food");
  print('my cat\'s food');
}

// # Concatenation
void concatenation() {
  var message = 'Hello' + ' my name is ';
  const name = 'Ray';
  message += name;
  print(message); // => 'Hello my name is Ray'
}

// # Interpolation
void interpolation() {
  const name = 'Ray';
  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  const sentence = 'One third is $oneThird.';
  print(sentence);

  final sentence2 = 'One third is ${oneThird.toStringAsFixed(3)}.';
  print(sentence2);
}

// # Multi-Line Strings
void multiLineStrings() {
  const bigString = '''
You can have a string
that contains multiple
lines
by
doing this.''';
  print(bigString);

  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';
  print(oneLine);

  const oneLine2 = 'This is only ' + 'a single ' + 'line ' + 'at runtime.';
  print(oneLine2);

  const twoLines = 'This is\ntwo lines.';
  print(twoLines);

  const rawString = r'My name \n is $name';
  print(rawString);
}

// # Inserting Characters From Their Codes
void insertingCharactersFromTheirCodes() {
  print('I \u2764 Dart\u0021');
  print('I love \u{1F3AF}');
}

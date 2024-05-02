import 'dart:math';

void main() {
  functionBasics();
  print('------------------------------');
  parameters();
  print('------------------------------');
}

// # Function Basics
// ## Don't Repeat Yourself
// ## Anatomy of a Dart Function
void functionBasics() {
  const input = 12;
  final output = compliment(input);
  print(output);
}

String compliment(int number) {
  return '$number is a very nice number.';
}

// # Parameters
void parameters() {
  helloPersonAndPet(
      'Fluffy', 'Chris'); // => Hello, Fluffy, and your furry friend, Chris!
  print('@@@@@@@@@@');
  print(fullName('Ray', 'Wenderlich')); // => Ray Wenderlich
  print(fullName(
      'Albert', 'Einstein', 'Professor')); // => Professor Albert Einstein
  print('@@@@@@@@@@');
  print(withinTolerance(5)); // => true
  print(withinTolerance(15)); // => false
  print(withinTolerance(9, 7, 11)); // => true
  print(withinTolerance(9, 7)); // => true
  print('@@@@@@@@@@');
  print(withinTolerance2(9, min: 7, max: 9)); // => true
  // The order of named parameters don't have to be in the exact the same as they were defined.
  print(withinTolerance2(9, max: 11, min: 7)); // => true
  // They can also go before of after the positional parameter:
  print(withinTolerance2(min: 7, max: 11, 9)); // => true
  print(withinTolerance2(min: 7, 9, max: 11)); // => true
  // named parameters are optional
  print(withinTolerance2(5)); // => true
  print(withinTolerance2(15)); // => false
  print(withinTolerance2(5, min: 7)); // => false
  print(withinTolerance2(15, max: 20)); // => true
  print('@@@@@@@@@@');
  print(withinTolerance3(value: 5)); // => true
  print(withinTolerance3(value: 5, min: 7)); // => false
  print(withinTolerance3(value: 5, max: 20)); // => true
  print(withinTolerance3(value: 5, min: 10, max: 20)); // => false
}

// ## Using Multiple Parameters
void helloPersonAndPet(String person, String pet) {
  // positional parameters
  print('Hello, $person, and your furry friend, $pet!');
}

// ## Making Parameters Optional
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// ## Providing Default Values
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

// ## Naming Parameters
bool withinTolerance2(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// ## Making Named Parameters Required
bool withinTolerance3({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}

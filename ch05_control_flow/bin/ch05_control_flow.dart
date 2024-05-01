import 'dart:ffi';

void main() {
  makingComparisions();
  print('------------------------------');
  theIfStatement();
  print('------------------------------');
  switchStatements();
}

// # Making Comparisions
void makingComparisions() {
  // ## Boolean Values
  const bool yes = true;
  const bool no = false;

  print(yes.runtimeType);
  print(no.runtimeType);
  // Type inference:
  const yes2 = true;
  const no2 = false;
  print(yes2.runtimeType);
  print(no2.runtimeType);

  // ## Boolean Operators
  // ### Testing Equality
  const doesOneEqualTwo = (1 == 2);
  print(doesOneEqualTwo); // => false

  const doesOneEqualTwo2 = 1 == 2;
  print(doesOneEqualTwo2); // => false

  // ### Testing Inequality
  const doesOneNotEqualTwo = (1 != 2);
  print(doesOneNotEqualTwo); // => true

  const alsoTrue = !(1 == 2);
  print(alsoTrue); // => true

  // ### Testing Greater and Less Than
  const isOneGreaterThanTwo = (1 > 2);
  const isOneLessThanTwo = (1 < 2);
  print(isOneGreaterThanTwo); // => false
  print(isOneLessThanTwo); // => true

  print(1 <= 2); // => true
  print(2 <= 2); // => true

  print(2 >= 1); // => true
  print(2 >= 2); // => true

  // ## Boolean Logic
  // ### AND Operator
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling); // => true

  // ### OR Operator
  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print(canDrawPlatypus);

  // ### Operator Precedence
  const andTrue = 1 < 2 && 4 > 3;
  print(andTrue); // => true
  const andFalse = 1 < 2 && 3 > 4;
  print(andFalse); // => false
  const orTrue = 1 < 2 || 3 > 4;
  print(orTrue);
  const orFalse = 1 == 2 || 3 == 4;
  print(orFalse);

  print(3 > 4 && 1 < 2 || 1 < 4); // => true

  // ### Overriding Precedence With Parentheses
  print(3 > 4 && (1 < 2 || 1 < 4)); // => false
  print((3 > 4 && 1 < 2) || 1 < 4); // => true

  // ## String Equality
  const guess = 'dog';
  const guessEqualsCat = guess == 'cat';
  print(guessEqualsCat); // => falsee
}

// # The If Statement
const global = 'Hello, world';

void theIfStatement() {
  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

// ## The Else Clause
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  // ## Else-If Chains
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID  COLOR!';
  }
  print(command);

  // ## Variable Scope
  const local = 'Hello, local';

  if (2 > 1) {
    const insideIf = 'Hello, anybody?';

    print(global);
    print(local);
    print(insideIf);
  }
  print(global);
  print(local);
  // print(insideIf); // Not allowed!

  // ## The Ternary Conditional Operator
  const score = 83;
  String message;
  if (score > 60) {
    message = 'You passed';
  } else {
    message = 'You failed';
  }
  print(message);

  const score2 = 83;
  const message2 = (score2 > 60) ? 'You passed' : 'You failed';
  print(message2);
}

// # Switch Statements
void switchStatements() {
  // ## Replacing Else-If Chains
  const number = 3;
  if (number == 0) {
    print('zero');
  } else if (number == 1) {
    print('one');
  } else if (number == 2) {
    print('two');
  } else if (number == 3) {
    print('three');
  } else if (number == 4) {
    print('four');
  } else {
    print('something else');
  }

  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  // ## Switching on Strings
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get you skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  // ## Enumerated Types
  // ### Naming Enums

  // ## Switching on Enums
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }

  // ### Enum Values and Indexes
  print(weatherToday);

  final index = weatherToday.index;
  print(index);

  // ## Avoiding the Overuse of Switch Statements
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

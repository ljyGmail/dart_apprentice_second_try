void main() {
  nullOverview();
  print('------------------------------');
  handlingNullableTypes();
}

// # Null Overview
// ## What Null Means
void nullOverview() {
  int postalCode = 12345;
  // Hey everybody, -1 means that the user
  // doesn't have a postal code. Don't forget!
  postalCode = -1;
  print(postalCode.runtimeType);

  // postalCode = null;

  // ## The Problem With Null
  print(isPositive(3));
  print(isPositive(-1));
  // print(isPositive(null)); // Runtime error: NoSuchMethodError

  // print(isPositive2(null)); // Compile error

  // ## Nullable vs. Non-Nullable Types
  // ### Non-Nullable Types
  int myInt = 1;
  double myDouble = 3.14159265;
  bool myBool = true;
  String myString = 'Hello, Dart!';
  // User myUser = User(id: 42, name: 'Ray');

  // ### Nullable Types
  int? myInt2 = null;
  double? myDouble2 = null;
  bool? myBool2 = null;
  String? myString2 = null;
  // User? myUser2 = null;

  int? age;
  double? height;
  String? message;

  print(age);
  print(height);
  print(message);
}

bool isPositive(dynamic anInteger) {
  return !anInteger.isNegative;
}

bool isPositive2(int anInteger) {
  return !anInteger.isNegative;
}

// # Handling Nullable Types
void handlingNullableTypes() {
  String? name;
  // Error: Property 'length' cannot be accessed on 'String?' because it is potentially null
  // print(name.length); // Compile time error
  // ## Type promotion
  name = 'Ray'; // type promotion
  print(name.length);

  // ## Null-Aware Operators
  // ### If-Null Operator(??)
  String? message;
  final text = message ?? 'Error';
  print(text);
  // Using the ?? operator is equivalent to the following:
  /*
  String text;
  if (message == null) {
    text = 'Error';
  } else {
    text = message;
  }
  */

  // ### Null-Aware Assignment Operator(??=)
  double? fontSize;
  // fontSize = fontSize ?? 20.0;
  fontSize ??= 20.0;
  print(fontSize);

  // ### Null-Aware Access Operator=(?.)
  int? age;
  print(age?.isNegative);
  print(age?.toDouble());

  // ### Null Assertion Operator(!)
  bool flowerIsBeautiful = isBeautiful('flower')!;
  print(flowerIsBeautiful);
  bool flowerIsBeautiful2 = isBeautiful('flower') as bool;
  print(flowerIsBeautiful2);
  bool flowerIsBeautiful3 = isBeautiful('flower') ?? true;
  print(flowerIsBeautiful3);

  // ### Null-Aware Cascade Operator(?..)
  User? user;
  user
    ?..name = 'Ray'
    ..id = 42;
  print(user.runtimeType);

  String? lengthString = user?.name?.length.toString();
  print(lengthString);

  final user2 = User2(name: null);
  print(user2);

  final user5 = User5();
  // print(user5.name);
}

// ### Flow Analysis
bool isPositive3(int? anInteger) {
  if (anInteger == null) {
    return false;
  }
  return !anInteger.isNegative;
}

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

// ### Null-Aware Cascade Operator(?..)
class User {
  String? name;
  int? id;
}

// ## Initializing Non-Nullable Fields
class User2 {
  // String name;
  // ### Using Initializers
  // String name = 'anonymous';
  // ### Using Initializing Formals
  /*
  User2(this.name);
  String name;
  */
  // ### Using an Initializer List
  /*
  User2(String name) : _name = name;
  String _name;
  */
  // ### Using Default Values
  /*
  User2([this.name = 'anonymous']);
  String name;
  */
  // named parameters
  /*
  User2({this.name = 'anonymous'});
  String name;
  */
  // ### Required Named Parameters
  /*
  User2({required this.name});
  String name;
  */

  // ## Nullable Instance Variables
  User2({this.name});
  String? name;
}

// ### No promotion for Non-Local Variables
bool isLong(String? text) {
  if (text == null) {
    return false;
  }
  return text.length > 100;
}

class TextWidget {
  String? text;

  /*
  bool isLong() {
    if (text == null) {
      return false;
    }
    // return text.length > 100; // Compile error
    return text!.length > 100; // one option
  }
  */
  bool isLong() {
    final text = this.text; // shadowing
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}

// ## The Late Keyword
class User3 {
  User3(this.name);

  final String name;
  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}

// alternate version of the example above:
class User4 {
  User4(this.name) {
    _secretNumber = _calculateSecret();
  }

  late final int _secretNumber;
  final String name;

  int _calculateSecret() {
    return name.length + 42;
  }
}

// ### Dangers of Being Late
class User5 {
  late String name;
}

// ### Benefits of Being Lazy
class SomeClass {
  late String? value = doHeavyCalculation();

  String? doHeavyCalculation(){
    // do heavy calculation
  }
}

void main() {
  dataTypesInDart();
  print('------------------------------');
  objectAndDynamicTypes();
}

// # Data Types in Dart
void dataTypesInDart() {
  // ## Type Inference
  // ### Annotating Variables Explicitly
  int myInteger = 10;
  double myDouble = 3.14;
  print(myInteger);
  print(myDouble);

  // ### Creating Constant Variables
  const int myInteger2 = 10;
  const double myDouble2 = 3.14;
  print(myInteger2);
  print(myDouble2);

  final int myInteger3 = 10;
  final double myDouble3 = 3.14;
  print(myInteger3);
  print(myDouble3);

  // ### Letting the Compiler Infer the Type
  const myInteger4 = 10;
  const myDouble4 = 3.14;
  print(myInteger4);
  print(myDouble4);

  // ### Checking the Inferred Type in VS Code

  // ### Checking the Type at Runtime
  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);

  print(myNumber.runtimeType);

  // ## Type Conversion
  var integer = 100;
  var decimal = 12.5;
  // integer = decimal; // Not allowed
  integer = decimal.toInt();
  print(integer);

  // ### Operators With Mixed Types
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = hourlyRate * hoursWorked;
  print(totalCost);

  // const totalCost2 = (hourlyRate * hoursWorked).toInt(); // toInt() is a runtime method
  final totalCost2 = (hourlyRate * hoursWorked).toInt();
  print(totalCost2);

  // ### Ensuring a Certain Type
  const wantADouble = 3;
  print(wantADouble.runtimeType);

  final actuallyDouble = 3.toDouble();
  print(actuallyDouble.runtimeType);

  const double actuallyDouble2 = 3;
  print(actuallyDouble2.runtimeType);

  const wantADouble2 = 3.0;
  print(wantADouble2.runtimeType);

  // ### Casting Down
  num someNumber = 3;
  // print(someNumber.isEven); // Not allowed.
  final someInt = someNumber as int;
  print(someInt.isEven);

  // final someDouble = someNumber as double; // CastError

  final someDouble = someNumber.toDouble();
  print(someDouble.runtimeType);
}

// ## Object and dynamic Types
void objectAndDynamicTypes() {
  var myVariable = 42;
  // myVariable = 'hello'; // compile-time error
  print(myVariable.runtimeType);

  dynamic myVariable2 = 42;
  myVariable2 = 'hello'; // OK
  print(myVariable2.runtimeType);

  Object myVariable3; // defaults to dynamic
  myVariable3 = 42; // OK
  myVariable3 = 'hello'; // OK
  print(myVariable3.runtimeType);

  Object? myVariable4 = 42;
  myVariable4 = 'hello'; // OK
  print(myVariable4.runtimeType);
}

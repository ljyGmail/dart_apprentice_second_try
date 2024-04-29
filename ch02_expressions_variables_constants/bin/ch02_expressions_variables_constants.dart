import 'dart:math';

void main(List<String> arguments) {
  // # Commenting Code
  // This is a comment. It is not executed.

  // This is also a comment,
  // over multiple lines.

  /*
  This is also a comment, Over many...
  many...
  many lines. */

  /* This is a comment.
  /* And inside it is
  another comment. */
  Back to the first. */

  /// I am a documentation comment
  /// at your service.

  /**
   * Me, too!
   */

  // ## Printing Output
  print('Hello, Dat Apprentice reader!');

  // # Statements and Expressions

  // ## Statements
  // print('Hello, Dat Apprentice reader!');
  /*
  if(someCondition){
    // code block
  }
  */

  // ## Expressions
  42;
  3 + 2;

  'Hello, Dart Application reader!';
  int x = 1;
  x;

  // # Arithmetic Operations
  // ## Simple Operations
  print(2 + 6);
  print(10 - 2);
  print(2 * 4);
  print(24 / 3);

  // ## Decimal Numbers
  print(22 / 7);
  print(22 ~/ 7); // integer division: truncating division operator

  // ## The Euclidean Modulo Operation
  print(28 % 10);

  // ## Order of Operations
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print(350 / 5 + 2);
  print(350 / (5 + 2));

  // ## Math Functions
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(sqrt(2));
  print(max(5, 10));
  print(min(-5, -10));
  print(max(sqrt(2), pi / 2));
  print('------------------------------');

  // # Naming Data
  // ## Variables
  int number = 10;
  print(number);

  number = 15;
  print(number);

  double apple = 3.14159;
  print(apple);

  // Every is an object:
  print(10.isEven);
  print(3.14159.round());

  // ### Type Safety
  int myInteger = 10;
  // myInteger = 3.14159; // No, no, no. That's not allowed :]
  print(myInteger);

  num myNumber;
  myNumber = 10; // OK
  myNumber = 3.14159; // OK
  // myNumber = 'ten'; // No, no, no.
  print(myNumber);

  dynamic myVariable;
  myVariable = 10; // OK
  myVariable = 3.14159; // OK
  myVariable = "ten"; // OK
  print(myVariable);

  // ### Type Inference
  var someNumber = 10;
  someNumber = 15;
  // someNumber = 3.14159; // No, no, no.
  print(someNumber);

  // ## Constants
  // ### Const Constants
  const myConstant = 10;
  // myConstant = 0; // NOt allowed.
  print(myConstant);

  // ### Final Constants
  final hoursSinceMidnight = DateTime.now().hour;
  // hoursSinceMidnight = 0; // Not allowed.
  print(hoursSinceMidnight);

  // ## Using Meaningful Names
  print('------------------------------');

  // # Increment and Decrement
  var counter = 0;

  counter += 1; // => 1
  print(counter);

  counter -= 1; // => 0
  print(counter);

  // The above code is same as following:
  counter = counter + 1;
  counter = counter - 1;

  counter++;
  print(counter);
  counter--;
  print(counter);

  double myValue = 10;
  myValue *= 3; // same as myValue = myValue * 3;
  print(myValue); // => 30.0

  myValue /= 2; // same as myValue = myValue / 2;
  print(myValue); // => 15.0
}
